package pet.message.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;

public interface MsgService {
	MsgListResult getAllMsgList(long member_number);
	MsgListResult getMsgList(long member_number, long sender_number);
	void insertMsg(Msg msg);
	long getUnreadMsg(long member_number);
	long msgRead(long member_number, long sender_number);
}
