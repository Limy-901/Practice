package pet.mvc.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import pet.message.vo.Msg;

public interface MessageMapper {
	ArrayList<Msg> getAllMsgList(long member_number);
	ArrayList<Msg> getMsgList(@Param("member_number") long member_number, @Param("sender_number") long sender_number);
	void insertMsg(Msg msg);
	long getUnreadMsg(long member_number);
	void msgRead(@Param("member_number") long member_number, @Param("sender_number") long sender_number);
}