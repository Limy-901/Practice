package pet.mvc.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.mvc.mapper.BoardMapper;

import pet.mvc.board.*;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper boardMapper;
	

	@Override
	public void write(Board board) {
		boardMapper.insert(board);

	}

	@Override
	public void edit(Board board) {
		boardMapper.update(board);

	}

	@Override
	public void remove(long post_idx) {
		boardMapper.delete(post_idx);

	}

	@Override
	public BoardListResult getBoardListResult(int cp, int ps) {
		long totalCount = boardMapper.selectCount();
		BoardVo boardVo = new BoardVo(null, null, cp, ps);
		List<Board> list = boardMapper.selectPerPage(boardVo);
		
		return new BoardListResult(cp, totalCount, ps, list);
	}
	
	@Override
	public BoardListResult getBoardListResult(String catgo, String keyword, int cp, int ps) {
		BoardVo boardVo = new BoardVo(catgo, keyword, cp, ps);
		long totalCount = boardMapper.selectCountByCatgo(boardVo);
		List<Board> list = boardMapper.selectByCatgo(boardVo);
		
		return new BoardListResult(cp, totalCount, ps, list);
	}
	
	@Override
	public Board getBoard(long post_idx) {
		Board dto = boardMapper.selectBySeq(post_idx);
		log.info("@dto:"+dto);
		ArrayList<BoardCmt> comment = boardMapper.selectCmtBySeq(post_idx);
		log.info("@comment:"+comment);
		dto.setComment(comment);
		return dto;

	}
	


	
	@Override
	public void plusHitCount(long post_idx) {
		boardMapper.updateCount(post_idx);
	}
	@Override
	public void writeCmt(BoardCmt boardCmt) {
		boardMapper.insertCmt(boardCmt);	
	}

	@Override
	public void removeCmt(long comment_idx){
		boardMapper.deleteCmt(comment_idx);
	}

	@Override
	public void editCmt(BoardCmt boardCmt) {
		boardMapper.updateCmt(boardCmt);
		
	}


	
	


	
}//insert瑜� �뙆�씪 �엳�뒗寃쎌슦, �뾾�뒗寃쎌슦濡� 遺꾧린�븯�뒗寃� 醫뗭쓣�벏
