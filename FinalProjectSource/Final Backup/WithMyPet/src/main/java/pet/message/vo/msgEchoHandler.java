package pet.message.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.platform.commons.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;

@Log4j
public class msgEchoHandler extends TextWebSocketHandler {
	//현재 접속중인 모든 세션
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	Map<String, WebSocketSession> userSessions = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//커넥션이 연결됐을때
		String senderId = getId(session);//웹소켓세션안에 http세션에서 아이디값을 받아옴.
		log.info("세션 연결 : "+senderId);
		sessions.add(session); // 접속될때마다 sessions에 담음.
		userSessions.put(senderId, session);
		
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		//소켓에 메시지 보냈을 때
		String senderId = getId(session);//웹소켓세션안에 http세션에서 아이디값을 받아옴.
		log.info("내 아이디 : "+senderId);
		log.info("메세지 발송 : "+session+" , "+message);
		
		for (WebSocketSession sess: sessions) {
			log.info(message);
	  		log.info("send message ="+session); 
	  		session.sendMessage(new TextMessage(senderId + " : " + message.getPayload())); // 나에게도 보이게.
			sess.sendMessage(new TextMessage(senderId + " : " + message.getPayload())); // 서버가 메세지를받을때마다 모든 세션에 메시지 전송
		}
		//프로토콜 : cmd,보낸사람,받은사람,board_idx //  ex) msg,user1,user2,15
		String msg = message.getPayload();
		if (!msg.isEmpty()) {
			String[] strs = message.getPayload().split(",");
			if(strs != null && strs.length == 4) {
				String cmd = strs[0];
				String sender = strs[1];
				String receiver = strs[2];
				String board_idx = strs[3]; 
				
				WebSocketSession receiverSession = userSessions.get(receiver);
				if(cmd.equals("msg") && receiverSession != null) {
					TextMessage tmsg = new TextMessage(sender+" 님이 "+board_idx+"번 글에 요청을 보냈습니다. ");
					receiverSession.sendMessage(tmsg);
				}
			}
		}
		
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//커넥션 끝났을 때
	  	sessions.remove(session); 
	  	String senderId = getId(session);
	  	userSessions.remove(senderId);
		log.info("세션 닫힘 : "+senderId+" , "+status);
	}
	// 발신자 아이디 찾기
	private String getId(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();//http세션안의값들을 다 map에 담음.
		MemberVO vo = new MemberVO();
		vo = (MemberVO) httpSession.get("login");
		if(vo == null) return "비회원";
		else return vo.getMember_name();
	}
}

