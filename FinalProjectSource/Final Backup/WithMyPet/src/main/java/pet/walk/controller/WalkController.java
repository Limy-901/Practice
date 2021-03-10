package pet.walk.controller;

import java.util.Date;
import java.util.Hashtable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.member.vo.MypagePetVO;
import pet.walk.service.WalkServiceImpl;
import pet.walk.vo.CmtVo;
import pet.walk.vo.Comment;
import pet.walk.vo.Mailer;
import pet.walk.vo.Walk;
import pet.walk.vo.WalkListResult;
import pet.walk.vo.joinVo;

@Log4j
@Controller
@RequestMapping("walk")

public class WalkController {
	@Autowired
	private WalkServiceImpl walkService;
	@Autowired(required=false)
	private Mailer mailer;
	
	// 산책 게시판 index
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, 
			@RequestParam (defaultValue="0", required=false)int cp,
			String searchType,String keyword) {
		if(cp == 0) {
			Object cpObj = session.getAttribute("cp");
			if(cpObj != null) cp = (Integer)cpObj;
		}
		session.setAttribute("cp", cp);
		if(searchType == null) {
			String orderSession = (String) session.getAttribute("orderType");
			if(orderSession != null) orderSession = orderSession.trim();
			searchType = orderSession;
		}
		session.setAttribute("searchType", searchType);
		if(keyword == null) {
			String keywordSession = (String) session.getAttribute("keyword");
			if(keywordSession != null) keywordSession = keywordSession.trim();
			keyword = keywordSession;
		}
		session.setAttribute("keyword", keyword);
		WalkListResult list = walkService.getListS(cp,5,searchType,keyword);
		ModelAndView mv = new ModelAndView("walk/walklist","list",list);
		if(list.getList().size() == 0) {
			if(cp>1) return new ModelAndView("redirect:list.do?cp="+(cp-1));
			else return new ModelAndView("walk/walklist","list",null);
		}else {
			return mv;
		}
	}
	
	// 신규 산책 작성
	@RequestMapping("post.do")
	public String walkpost() {
		return "/walk/walkpost";
	}
	
	// 신규 산책 등록
	@RequestMapping(value="make.do")
	public String make(Walk dto)  {
		walkService.insertWalk(dto);
		return "redirect:list.do";
	}

	// 산책 참여신청
	@GetMapping(value="apply.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody CmtVo apply(HttpSession session, String walk_cmt_content, Long walk_idx) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		Comment dto = new Comment();
		dto.setMember_number(vo.getMember_number());
		dto.setWalk_idx(walk_idx);
		dto.setWalk_cmt_writer(vo.getMember_name());
		dto.setWalk_cmt_content(walk_cmt_content);
		boolean flag = walkService.insertWalkCmt(dto);
		if(flag) {
			try {
				String receiver = "misty901@naver.com";
				String subject = dto.getWalk_cmt_writer()+"님이 산책에 참여하고 싶어합니다!";
				String content = dto.getWalk_cmt_writer()+"님의 메세지 : "+dto.getWalk_cmt_content()
				+" / http://localhost:8080/walk/blog.do?idx="+dto.getWalk_idx();
				mailer.sendMail(receiver,subject,content);
				CmtVo allCmts = walkService.getWalkCmt(walk_idx);
				return allCmts;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		}else {
			return null;
		}
	}
	
	// 산책 게시글 수정 (페이지 이동)
	@GetMapping("update.do")
	public ModelAndView update(long idx) {
		Walk dto = walkService.getWalk(idx);
		log.info(dto);
		ModelAndView mv = new ModelAndView("walk/walkUpdate","content",dto);
		return mv;
	}
	
	// 산책 게시글 수정 (내용 수정)
	@PostMapping("update.do")
	public String rewrite(Walk dto) {
		walkService.walkUpdate(dto);
		return "redirect:list.do";
	}
	
	// 산책 게시글 삭제
	@GetMapping("delete.do")
	public String delete(long idx) {
		walkService.walkDelete(idx);
		return "redirect:list.do?cp=1";
	}
	
	// 산책 신청자 정보 데이터
	@GetMapping(value="getMemberData.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> getCmtMember(long idx, HttpServletResponse response) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		Comment dto = walkService.getWalkCmtData(idx); // 댓글 정보 가져오기
		MypagePetVO vo = walkService.getCmtPetData(dto.getMember_number()); // 댓글 작성자 반려동물 정보 가져오기
		map.put("Comment",dto);
		map.put("Pet",vo);
		return map;
	}
	
	// 산책 게시글 구체적으로 보기
	@RequestMapping("blog.do")
	public ModelAndView walkblog(HttpSession session, HttpServletRequest request, long idx) {
		Walk dto = walkService.getWalk(idx);
		log.info("여기욤"+dto);
		// 날짜 + 시간 가공
		Date origin = dto.getWalk_date();
		DateFormat dayForm = new SimpleDateFormat("yyyy년 MM월 dd일");
		DateFormat timeForm = new SimpleDateFormat("a hh시 mm분");
		String day = dayForm.format(origin);
		String time = timeForm.format(origin);
		Hashtable<String,Object> map = new Hashtable<String,Object>();
		// 멤버 + 반려동물 정보
		MemberVO member = walkService.getMemData(dto.getMember_number());
		MypagePetVO pet = walkService.getCmtPetData(dto.getMember_number());
		map.put("day",day);
		map.put("time",time);
		map.put("dto",dto);
		map.put("member",member);
		map.put("pet",pet);
		ModelAndView mv = new ModelAndView("walk/walkblog","content",map);
		return mv;
	}
	
	// 좋아요 버튼, 업데이트
	@GetMapping(value="like.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody int like(Long walk_idx,HttpServletResponse response, HttpSession session) {
		MemberVO memVo = (MemberVO)session.getAttribute("login");
		joinVo vo = new joinVo(walk_idx,memVo.getMember_number());
		walkService.addHeart(vo);
		int likeCount = walkService.getWalkLike(walk_idx);
		return likeCount;
	}
	
	// 산책 참여 수락
	@GetMapping(value="join.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody CmtVo join(Long joinIdx, Long joinWalkIdx, HttpServletResponse response) {
		long memberNo = walkService.selectByCmtIdx(joinIdx);
		joinVo vo = new joinVo(joinWalkIdx,memberNo);
		boolean flag = walkService.insertWalkJoin(vo,joinIdx);
		if(flag) {
			CmtVo allCmts = walkService.getWalkCmt(joinWalkIdx);
			return allCmts; 
		}else return null;
	}

	// 산책 정보 검색
	@GetMapping(value="search.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody WalkListResult search(String keyword, String searchType) {
		WalkListResult list = walkService.getListS(1,10,searchType,keyword);
		return list;
	}
}
