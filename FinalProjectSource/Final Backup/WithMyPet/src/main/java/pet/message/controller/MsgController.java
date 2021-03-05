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
		MemberVO vo = (MemberVO) session.getAttribute("login");
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		log.info(vo.getMember_number());
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
		map.put("msgLists",msgLists);
		ModelAndView mv = new ModelAndView("message/chat","map",map);
		return mv;
	}
	
	//메시지 상대 선택, ajax
	@GetMapping(value="selectChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> selectChat(HttpSession session, long sender_number) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		long member_number = vo.getMember_number();
		MsgListResult msgLists = msgService.getMsgList(member_number, sender_number);
		map.put("msgLists",msgLists);
		return map;
	}
	
	//메시지 전송, ajax
	@GetMapping(value="sendChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody MsgListResult sendChat(Msg msg) {
		msgService.insertMsg(msg);
		MsgListResult lists = msgService.getMsgList(msg.getMember_number(),msg.getSender_number());
		
		return lists;
	}
}
