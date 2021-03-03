package pet.mvc.mapper;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import pet.admin.vo.MemListResult;
import pet.admin.vo.MemberOption;
import pet.admin.vo.MemberWalkChart;
import pet.admin.vo.Qna;
import pet.admin.vo.WeeklyData;
import pet.member.vo.MemberVO;
import pet.mvc.board.Board;
import pet.walk.vo.Walk;

public interface AdminMapper {
	long getTotalMember();
	long getNewMember();
	long getTodayIncome();
	long getTotalWalk();
	long getTotalJoin();
	ArrayList<WeeklyData> getWeeklyData();
	ArrayList<MemberVO> getNewMemList();
	ArrayList<MemberVO> getTotalMemberList(MemListResult result);
	long memberTotalCount(String keyword);
	MemberOption getMemOptionData(long member_number);
	ArrayList<Walk> getNextWalks();
	ArrayList<Walk> getPreWalks();
	ArrayList<Board> getNotAnsweredQ();
	void writeAnswer(@Param("content")String content, @Param("idx")int idx);
	ArrayList<Qna> getAnsweredQ(@Param("cp")int cp, @Param("keyword")String keyword);
	MemberWalkChart getMemWalkChart(long member_number);
	ArrayList<MemberWalkChart> getChartList();
	ArrayList<MemberWalkChart> getLocationList();
}