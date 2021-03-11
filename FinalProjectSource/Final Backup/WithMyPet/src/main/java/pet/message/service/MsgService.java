package pet.message.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import pet.message.vo.MemberReview;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;

public interface MsgService {
	MsgListResult getAllMsgList(long member_number);
	MsgListResult getMsgList(long member_number, long sender_number);
	void insertMsg(Msg msg);
	long getUnreadMsg(long member_number);
	long msgRead(long member_number, long sender_number);
	MemberReview selectRecentWalk(long member_number, long walk_number);
	void writeReview(MemberReview memberReview, long member_number);
}
