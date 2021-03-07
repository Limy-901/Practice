package pet.message.controller;

import java.io.IOException;
import java.util.Hashtable;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
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
	
	//메시지 상대 선택, ajax
	@GetMapping(value="selectChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> selectChat(HttpSession session, long sender_number) {
		MemberVO vo = (MemberVO) session.getAttribute("login"); // 세션에서 로그인 정보 받기
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number()); // 대화상대목록 업데이트
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number); // 대화내용
		map.put("msgLists",msgLists);
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		return map;
	}
	
	//메시지 전송, ajax
	@GetMapping(value="sendChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> sendChat(HttpSession session, long sender_number, String msg_content) {
		MemberVO vo = (MemberVO) session.getAttribute("login"); // 세션에서 로그인 정보 받기
		Msg msg = new Msg(vo.getMember_number(), sender_number, msg_content);
		msgService.insertMsg(msg);
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number); // 대화내용
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		return map;
	}
}
