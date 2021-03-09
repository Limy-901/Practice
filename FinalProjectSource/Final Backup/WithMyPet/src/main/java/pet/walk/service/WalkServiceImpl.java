package pet.walk.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.log4j.Log4j;
import pet.mvc.mapper.WalkMapper;
import pet.walk.vo.CmtVo;
import pet.walk.vo.Comment;
import pet.walk.vo.Walk;
import pet.walk.vo.WalkListResult;
import pet.walk.vo.WalkListVo;
import pet.walk.vo.joinVo;

@Service
@Log4j
public class WalkServiceImpl implements WalkService {
	@Autowired
	private WalkMapper walkMapper;
	
	@Override
	public void insertWalk(Walk dto) {
		// 날짜 포맷 변경 (timestamp)
		String from = (dto.getTime())+":00.000";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-ddhh:mm:ss.SSS");
		Date parsedDate = null;
		Timestamp timestamp = null;
		try {
		    parsedDate = dateFormat.parse(from);
		    timestamp = new java.sql.Timestamp(parsedDate.getTime());
			dto.setWalk_date(timestamp);
		} catch(Exception e) {
			log.info("#insertWalk Exception : "+e);
		}
		walkMapper.insertWalk(dto);
	}
	@Override
	public void walkUpdate(Walk dto) {
		// �ð� > TimeStamp ��ȯ
		String from = (dto.getTime())+":00.000";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-ddhh:mm:ss.SSS");
		Date parsedDate = null;
		Timestamp timestamp = null;
		try {
		    parsedDate = dateFormat.parse(from);
		    timestamp = new java.sql.Timestamp(parsedDate.getTime());
		    dto.setMember_number(1L); 
			dto.setWalk_date(timestamp);
		} catch(Exception e) {
			log.info("#walkUpdate exception : "+e);
		}
		walkMapper.walkUpdate(dto);
	}

	@Override
	public WalkListResult getListS(int cp, int ps, String orderType, String keyword) {
		ps = 5;
		WalkListVo listVo = new WalkListVo(cp, ps, orderType, keyword);
		ArrayList<Walk> lists = walkMapper.getList(listVo);
		ArrayList<Comment> cmtList = new ArrayList<Comment>();
		for(Walk list:lists) {
			Date origin = list.getWalk_date();
			DateFormat dayForm = new SimpleDateFormat("yyyy년 MM월 dd일");
			DateFormat timeForm = new SimpleDateFormat("a hh시 mm분");
			String day = dayForm.format(origin);
			String time = timeForm.format(origin);
			cmtList.addAll(walkMapper.getJoinCmt(list.getWalk_idx()));
			list.setDay(day);
			list.setTime(time);
		}
		return new WalkListResult(cp, ps, walkMapper.totalWalk(orderType, keyword), lists, cmtList);
	}


	@Override
	public Walk getWalk(long idx) {
		Walk dto = walkMapper.getWalk(idx);
		ArrayList<Comment> cmts = walkMapper.getWalkCmt(idx);
		ArrayList<Comment> joinCmts = walkMapper.getJoinCmt(idx);
		int apply = cmts.size();
		int join = joinCmts.size();
		int like = walkMapper.getWalkLike(idx);
		dto.setApply(apply);
		dto.setJoin(join);
		dto.setLike(like);
		dto.setNormalCmts(cmts);
		dto.setJoinCmts(joinCmts);
		log.info("###apply:"+apply+", join:"+join+", like:"+like);
		return dto;
	}

	@Override
	public CmtVo getWalkCmt(long idx) {
		ArrayList<Comment> normal = walkMapper.getWalkCmt(idx);
		ArrayList<Comment> join = walkMapper.getJoinCmt(idx);
		int applyCount = normal.size();
		int joinCount = join.size();
		CmtVo vo = new CmtVo(normal, join, applyCount, joinCount);
		return vo;
	}

	@Override
	public boolean insertWalkCmt(Comment dto) {
		dto.setMember_number(1L); 
		joinVo vo = new joinVo(dto.getWalk_idx(),dto.getMember_number());
		int i =walkMapper.checkCmt(vo);
		if(i==1) return false;
		else {
			walkMapper.insertWalkCmt(dto);
			return true;
		}
	}
	@Override
	public void walkDelete(long idx) {
		walkMapper.walkDelete(idx);
	}
	@Override
	public Comment getWalkCmtData(long idx) {
		Comment dto = walkMapper.getWalkCmtData(idx);
		return dto;
	}
	@Override
	public boolean insertWalkJoin(joinVo vo, long walk_idx) {
		int flag = walkMapper.checkJoin(vo);
		if(flag == 1) {
			return false;
		}else {
			walkMapper.insertWalkJoin(vo);
			walkMapper.updateWalkCmt(walk_idx);
			return true;
		}
	}
	@Override
	public long selectByCmtIdx(long cmtIdx) {
		Long memNo = walkMapper.selectByCmtIdx(cmtIdx);
		return memNo;
	}
	@Override
	public void addHeart(joinVo vo) {
		walkMapper.addHeart(vo);
	}
	@Override
	public int getWalkLike(long idx) {
		int likeCount = walkMapper.getWalkLike(idx);
		return likeCount;
	}

}
