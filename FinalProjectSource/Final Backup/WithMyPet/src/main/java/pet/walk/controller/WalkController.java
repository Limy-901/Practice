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
		ModelAndView mv = new ModelAndView("pet/walklist","list",list);
		if(list.getList().size() == 0) {
			if(cp>1) return new ModelAndView("redirect:list.do?cp="+(cp-1));
			else return new ModelAndView("pet/walklist","list",null);
		}else {
			return mv;
		}
	}
	
	@RequestMapping(value="make.do")
	public String make(Walk dto)  {
		String from = (dto.getTime())+":00.000";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
		walkService.insertWalk(dto);
		return "redirect:list.do";
	}
	
	
	@GetMapping(value="apply.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody CmtVo apply(String walk_cmt_writer, String walk_cmt_content, Long walk_idx) {
		Comment dto = new Comment();
		dto.setWalk_idx(walk_idx);
		dto.setWalk_cmt_writer(walk_cmt_writer);
		dto.setWalk_cmt_content(walk_cmt_content);
		boolean flag = walkService.insertWalkCmt(dto);
		log.info("�����"+flag);
		log.info("dto"+dto.getMember_number());
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
	
	
	
	@GetMapping("update.do")
	public ModelAndView update(long idx) {
		Walk dto = walkService.getWalk(idx);
		log.info(dto);
		ModelAndView mv = new ModelAndView("pet/walkUpdate","content",dto);
		return mv;
	}
	
	@PostMapping("update.do")
	public String rewrite(Walk dto) {
		walkService.walkUpdate(dto);
		return "redirect:list.do";
	}
	
	@GetMapping("delete.do")
	public String delete(long idx) {
		walkService.walkDelete(idx);
		return "redirect:list.do?cp=1";
	}
	
	@GetMapping(value="getMemberData.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Comment getCmtMember(long idx, HttpServletResponse response) {
		
		Comment dto = walkService.getWalkCmtData(idx);
		return dto;
	}
	
	@RequestMapping("blog.do")
	public ModelAndView walkblog(HttpSession session, HttpServletRequest request, long idx) {
		Walk dto = walkService.getWalk(idx);
		Date origin = dto.getWalk_date();
		DateFormat dayForm = new SimpleDateFormat("yyyy년 MM월 dd일");
		DateFormat timeForm = new SimpleDateFormat("a hh시 mm분");
		String day = dayForm.format(origin);
		String time = timeForm.format(origin);
		Hashtable<String,Object> map = new Hashtable<String,Object>();
		map.put("day",day);
		map.put("time",time);
		map.put("dto",dto);
		ModelAndView mv = new ModelAndView("pet/walkblog","content",map);
		return mv;
	}
	
	@GetMapping(value="like.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody int like(Long walk_idx,HttpServletResponse response) {
		joinVo vo = new joinVo(walk_idx,1L);
		walkService.addHeart(vo);
		int likeCount = walkService.getWalkLike(walk_idx);
		return likeCount;
	}
	
	@GetMapping(value="join.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody CmtVo join(Long joinIdx, Long joinWalkIdx, HttpServletResponse response) {
		log.info(joinIdx+"�̰Ŷ�, "+joinWalkIdx);
		long memberNo = walkService.selectByCmtIdx(joinIdx);
		joinVo vo = new joinVo(joinWalkIdx,memberNo);
		boolean flag = walkService.insertWalkJoin(vo,joinIdx);
		if(flag) {
			CmtVo allCmts = walkService.getWalkCmt(joinWalkIdx);
			return allCmts; 
		}else return null;
	}
	
	@RequestMapping("post.do")
	public String walkpost() {
		return "/pet/walkpost";
	}
	
	@GetMapping(value="search.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody WalkListResult search(String keyword, String searchType) {
		WalkListResult list = walkService.getListS(1,10,searchType,keyword);
		return list;
	}
}
