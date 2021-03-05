package pet.message.service;

import java.util.ArrayList;
import org.springframework.stereotype.Service;
import lombok.extern.log4j.Log4j;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;
import pet.mvc.mapper.MessageMapper;

@Service
@Log4j
public class MsgServiceImpl implements MsgService {
	MessageMapper msgMapper;

	@Override
	public MsgListResult getAllMsgList(long member_number) {
		log.info(member_number);
		ArrayList<Msg> lists = msgMapper.getAllMsgList(member_number);
		MsgListResult msgLists = new MsgListResult();
		if(lists == null) {
			msgLists.setChatList(lists);
			log.info("##서비스 getAllMsgList : "+lists);
			return msgLists;
		}else return null;
		
		
	}

	@Override
	public MsgListResult getMsgList(long member_number, long sender_number) {
		ArrayList<Msg> lists = msgMapper.getMsgList(member_number, sender_number);
		MsgListResult msgList = new MsgListResult();
		msgList.setChatList(lists);
		log.info("## serviceImpl : getMsgList : "+msgList);
		return msgList;
	}

	@Override
	public void insertMsg(Msg msg) {
		log.info("## msg insert"+msg);
		msgMapper.insertMsg(msg);
	}
}
