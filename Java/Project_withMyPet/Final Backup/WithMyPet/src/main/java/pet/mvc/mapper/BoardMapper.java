package pet.mvc.mapper;

import java.util.ArrayList;
import java.util.List;

import pet.mvc.board.Board;
import pet.mvc.board.BoardCmt;
import pet.mvc.board.BoardVo;

public interface BoardMapper {
	List<Board> selectPerPage(BoardVo boardVo);
	List<Board> selectByCatgo(BoardVo boardVo);
	Board selectBySeq(long post_idx);
	long selectCount();//湲�媛��닔�뒗 �븳�럹�씠吏� 20媛�
	long selectCountByCatgo(BoardVo boardVo);
	void insert(Board board);
	void delete(long post_idx);
	void update(Board board);
	String selectPostTime(long post_idx);
	
	
	void updateCount(long post_idx);//�썝蹂� ���엯=boolean
	
	ArrayList<BoardCmt> selectCmtBySeq(long post_idx);
	void insertCmt(BoardCmt boardCmt);//�썝蹂� ���엯=boolean
	void deleteCmt(long comment_idx);
	void updateCmt(BoardCmt boardCmt);
	
}
