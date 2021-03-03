package pet.admin.service;

import java.util.ArrayList;
import java.util.Hashtable;
import pet.admin.vo.MemListResult;
import pet.admin.vo.MemberWalkChart;
import pet.admin.vo.Qna;
import pet.mvc.board.Board;
import pet.walk.vo.Walk;

public interface AdminService {
	long getTotalMember();
	long getNewMember();
	long getTodayIncome();
	Hashtable<String, Object> getIndexData();
	MemListResult getTotalMemberList(int cp, String keyword);
	ArrayList<Walk> getWalks(int status);
	ArrayList<String> getWalkTimes(ArrayList<Walk> lists, int type);
	ArrayList<Board> getNotAnsweredQ();
	void writeAnswer(String content, int idx);
	ArrayList<Qna> getAnsweredQ(int cp, String keyword);
	ArrayList<MemberWalkChart> getMemChartValues();
	ArrayList<MemberWalkChart> getLocationList();
}
