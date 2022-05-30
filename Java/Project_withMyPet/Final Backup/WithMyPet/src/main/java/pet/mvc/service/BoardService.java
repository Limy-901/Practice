package pet.mvc.service;

import java.util.ArrayList;
import java.util.List;

import pet.mvc.board.Board;
import pet.mvc.board.BoardCmt;
import pet.mvc.board.BoardListResult;


public interface BoardService {
	//�뙆�씪�뾽濡쒕뱶�옉 而⑦뀗�듃�뾽濡쒕뱶 遺꾧린�븘�슂
	void write(Board board);
	void edit(Board board);
	void remove(long post_idx);
	BoardListResult getBoardListResult(String catgo, String keyword, int cp, int ps);
	BoardListResult getBoardListResult(int cp, int ps);

	
	void plusHitCount(long post_idx);
	
	void writeCmt(BoardCmt boardCmt);
	void removeCmt(long comment_idx);
	void editCmt(BoardCmt boardCmt);
	Board getBoard(long post_idx);

	
}
