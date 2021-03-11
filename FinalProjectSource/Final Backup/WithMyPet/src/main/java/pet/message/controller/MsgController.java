package pet.message.controller;

import java.util.Hashtable;
import javax.servlet.http.HttpSession;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.message.service.MsgService;
import pet.message.vo.MemberReview;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("msg")
public class MsgController {
	MsgService msgService;
	
	//메시지 메인화면
	@RequestMapping("chat.do")
	public ModelAndView chat(HttpSession session) {
		MemberVO vo = (MemberVO) session.getAttribute("login"); // 세션에서 로그인 정보 받기
		if(vo != null) { // 로그인 상태이면
			Hashtable<String, Object> map = new Hashtable<String, Object>();
			MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
			map.put("msgLists",msgLists);
			ModelAndView mv = new ModelAndView("message/chat","map",map);
			return mv;
		}else { // 로그인 상태가 아니면 (세션이 날아갔으면)
			ModelAndView mv = new ModelAndView("/index","map",null);
			return mv;
		}
	}
	
	//메시지 상대 선택, 해당 상대와의 메시지 읽음 처리, ajax
	@GetMapping(value="selectChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> selectChat(HttpSession session, long sender_number) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		// 대화 상대, 내역 불러오기, 안읽은 메시지
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		long unread = msgService.msgRead(vo.getMember_number(), sender_number);
   	    // 후기 미작성 산책 검색
   	    MemberReview walk = msgService.selectRecentWalk(vo.getMember_number(), sender_number); 
   	    if(walk != null) map.put("walk",walk);
		map.put("msgLists",msgLists); 
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number); 
		map.put("unread",unread);
		map.put("myName",vo.getMember_name());
		session.setAttribute("unread", unread);
		return map;
	}
	
	//메시지 전송, ajax
	@GetMapping(value="sendChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> sendChat(HttpSession session, long sender_number, String msg_content) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		// 메시지 insert
		if(msg_content != null && msg_content.length()>0) {
			Msg msg = new Msg(vo.getMember_number(), sender_number, msg_content);
			msgService.insertMsg(msg);
		}
		// 대화상대목록, 안읽은 메시지, 대화내역
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		long unread = msgService.msgRead(vo.getMember_number(), sender_number);
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		map.put("unread",unread);
		session.setAttribute("unread", unread);
		return map;
	}
	
	//메시지 수신 시 1:1 대화창 갱신, ajax
	@GetMapping(value="refreshChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> refreshChat(HttpSession session, long sender_number) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		// 안읽은 메시지 갱신
		long count = msgService.msgRead(vo.getMember_number(), sender_number);
		session.setAttribute("unread", count);
		log.info("##unread 갱신했어요"+count);
		// 대화내역 갱신
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		map.put("unread",count);
		return map;
	}
	
	// 산책 후기 한줄평 insert, ajax
	@GetMapping(value="writeReview.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody void writeReview(HttpSession session,long walk_idx, long sender_number, String content) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		MemberReview memberReview = msgService.selectRecentWalk(vo.getMember_number(), sender_number);
		memberReview.setMember_review(content);
		msgService.writeReview(memberReview, vo.getMember_number());
	}
	
}
