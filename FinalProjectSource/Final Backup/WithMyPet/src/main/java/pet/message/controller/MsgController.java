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
		MemberVO vo = (MemberVO) session.getAttribute("login");
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number()); // 대화 목록 갱신
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number); // 1:1 대화내역 불러오기
		
		long count = msgService.msgRead(vo.getMember_number(), sender_number); // 메시지 읽음 처리
   	    session.setAttribute("unread", count);
   	    
   	    MemberReview walk = msgService.selectRecentWalk(vo.getMember_number(), sender_number); // 최근 1:1 산책 내역 검사
   	    if(walk == null) log.info("검색된 1:1 산책 없음");
   	    else map.put("walk",walk);
		map.put("msgLists",msgLists); 
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number); 
		map.put("unread",count);
		map.put("myName",vo.getMember_name());
		
		return map;
	}
	
	//메시지 전송, ajax
	@GetMapping(value="sendChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> sendChat(HttpSession session, long sender_number, String msg_content) {
		MemberVO vo = (MemberVO) session.getAttribute("login"); // 세션에서 로그인 정보 받기
		if(msg_content != null && msg_content.length()>0) {
			Msg msg = new Msg(vo.getMember_number(), sender_number, msg_content);
			msgService.insertMsg(msg);
		}
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number); // 대화내용
		long count = msgService.msgRead(vo.getMember_number(), sender_number);
		session.setAttribute("unread", count);
		log.info("##unread 갱신했어요"+count);
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		map.put("unread",count);
		return map;
	}
	
	//메시지 수신 시 1:1 대화창 갱신, ajax
	@GetMapping(value="refreshChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> refreshChat(HttpSession session, long sender_number) {
		log.info("##리프레쉬!!!"+sender_number);
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		// 읽지 않은 수 갱신 (+)
		long count = msgService.msgRead(vo.getMember_number(), sender_number);
		session.setAttribute("unread", count);
		log.info("##unread 갱신했어요"+count);
		// 대화 내용 갱신 (+)
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number); // 대화내용
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		map.put("unread",count);
		log.info("##refresh 끝!!!"+map);
		return map;
	}
	
}
