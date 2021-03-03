package pet.admin.controller;

import java.util.ArrayList;
import java.util.Hashtable;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import lombok.extern.log4j.Log4j;
import pet.admin.service.AdminService;
import pet.admin.vo.MemListResult;
import pet.admin.vo.MemberWalkChart;
import pet.admin.vo.Qna;
import pet.mvc.board.Board;
import pet.walk.vo.Walk;
import static pet.admin.vo.Options.*;

@Controller
@Log4j
@RequestMapping("admin")
public class AdminController {
	@Autowired
	AdminService adminService;
	

	@RequestMapping("index.do")
	private ModelAndView index() {
		log.info("Admin Controller 들어옴");
		Hashtable<String, Object> map = adminService.getIndexData();
		ModelAndView mv = new ModelAndView("admin/adminIndex","indexData",map);
		return mv;
	}
	@RequestMapping("memberList.do")
	private ModelAndView memberList(HttpSession session,
			@RequestParam (defaultValue="0",required=false)int memCp,
			@RequestParam (required=false)String memKeyword) {
		if(memCp == 0) {
			Object cpObj = session.getAttribute("memCp");
			if(cpObj != null) memCp=(Integer)cpObj;
			else memCp = 1;
		}
		session.setAttribute("memCp", memCp);
		if(memKeyword == null) {
			String keySession = (String) session.getAttribute("memKeyword");
			if(keySession != null) keySession = keySession.trim();
			memKeyword = keySession;
		}
		session.setAttribute("memKeyword", memKeyword);
		MemListResult list = adminService.getTotalMemberList(memCp, memKeyword);
		ModelAndView mv = new ModelAndView("admin/memberList","list",list);
		if(list.getList().size() == 0) {
			if(memCp>1) return new ModelAndView("redirect:memberList.do?cp="+(memCp-1));
			else return new ModelAndView("admin/memberList","list",null);
		}else return mv;
	}
	@RequestMapping("memberMessage.do")
	private String memberMessage() {
		return "admin/memberMessage";
	}
	@RequestMapping("nextWalk.do")
	private ModelAndView nextWalk() {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		ArrayList<Walk> lists = adminService.getWalks(NEXT_WALKS);
		ArrayList<String> times = adminService.getWalkTimes(lists,NEXT_WALKS);
		map.put("lists",lists);
		map.put("times",times);
		ModelAndView mv = new ModelAndView("admin/nextWalk","map",map);
		return mv;
	}
	@RequestMapping("previousWalk.do")
	private ModelAndView previousWalk() {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		ArrayList<Walk> lists = adminService.getWalks(PREVIOUS_WALKS);
		ArrayList<String> times = adminService.getWalkTimes(lists,PREVIOUS_WALKS);
		map.put("lists",lists);
		map.put("times",times);
		ModelAndView mv = new ModelAndView("admin/previousWalk","map",map);
		return mv;
	}
	@RequestMapping("registerProduct.do")
	private String registerProduct() {
		return "admin/registerProduct";
	}
	@RequestMapping("productQ.do")
	private ModelAndView productQ() {
		ArrayList<Board> lists = adminService.getNotAnsweredQ();
		ModelAndView mv = new ModelAndView("admin/productQ","lists",lists);
		return mv;
	}
	@GetMapping(value="answer.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody ArrayList<Board> answer(String content, int board_idx) {
		adminService.writeAnswer(content,board_idx);
		ArrayList<Board> lists = adminService.getNotAnsweredQ();
		return lists;
	}
	
	@RequestMapping("productA.do")
	private ModelAndView productA(HttpSession session,
			@RequestParam (defaultValue="0",required=false)int qnaCp,
			@RequestParam (required=false)String qnaKeyword) {
		if(qnaCp == 0) {
			Object cpObj = session.getAttribute("memCp");
			if(cpObj != null) qnaCp=(Integer)cpObj;
			else qnaCp = 1;
		}
		session.setAttribute("memCp", qnaCp);
		if(qnaKeyword == null) {
			String keySession = (String) session.getAttribute("memKeyword");
			if(keySession != null) keySession = keySession.trim();
			qnaKeyword = keySession;
		}
		session.setAttribute("memKeyword", qnaKeyword);
		ArrayList<Qna> lists = adminService.getAnsweredQ(qnaCp, qnaKeyword);
		ModelAndView mv = new ModelAndView("admin/productA","lists",lists);
		return mv;
	}
	@RequestMapping("orderStatus.do")
	private String orderStatus() {
		return "admin/orderStatus";
	}
	@RequestMapping("reportedPost.do")
	private String reportedPost() {
		return "admin/reportedPost";
	}
	@RequestMapping("walkStatistic.do")
	private ModelAndView walkStatistic() {
		Hashtable<String, Object> map = new Hashtable<String, Object>(); 
		ArrayList<MemberWalkChart> lists1 = adminService.getMemChartValues();
		ArrayList<MemberWalkChart> lists2 = adminService.getLocationList();
		map.put("walkLists",lists1);
		map.put("locLists",lists2);
		ModelAndView mv = new ModelAndView("admin/walkStatistic", "map", map);
		
		return mv;
	}
	@RequestMapping("salesStatistic.do")
	private String salesStatistic() {
		return "admin/salesStatistic";
	}
	@RequestMapping("postNotice.do")
	private String postNotice() {
		return "admin/postNotice";
	}
	
	
}
