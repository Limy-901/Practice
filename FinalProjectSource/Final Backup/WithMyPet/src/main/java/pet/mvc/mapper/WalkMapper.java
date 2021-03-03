package pet.mvc.mapper;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import pet.walk.vo.Comment;
import pet.walk.vo.Walk;
import pet.walk.vo.WalkListVo;
import pet.walk.vo.joinVo;


public interface WalkMapper {
	void insertWalk(Walk dto);
	ArrayList<Walk> getList(WalkListVo vo);
	Walk getWalk(long idx);
	Long totalWalk(@Param("orderType")String orderType, @Param("keyword")String keyword);
	ArrayList<Comment> getWalkCmt(long idx);
	ArrayList<Comment> getJoinCmt(long idx);
	void insertWalkCmt(Comment dto);
	void walkUpdate(Walk dto);
	void walkDelete(long idx);
	Comment getWalkCmtData(long idx);
	void insertWalkJoin(joinVo vo);
	long selectByCmtIdx(long cmtIdx);
	void updateWalkCmt(long cmtIdx);
	void addHeart(joinVo vo);
	int getWalkLike(long idx);
	int checkJoin(joinVo vo);
	int checkCmt(joinVo vo);
}
