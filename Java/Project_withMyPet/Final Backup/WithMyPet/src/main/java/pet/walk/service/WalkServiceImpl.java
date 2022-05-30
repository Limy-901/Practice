package pet.walk.service;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Hashtable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.member.vo.MypagePetVO;
import pet.mvc.mapper.WalkMapper;
import pet.walk.vo.CmtVo;
import pet.walk.vo.Comment;
import pet.walk.vo.DetailMemberData;
import pet.walk.vo.Walk;
import pet.walk.vo.WalkListResult;
import pet.walk.vo.WalkListVo;
import pet.walk.vo.joinVo;

@Service
@Log4j
public class WalkServiceImpl implements WalkService {
	@Autowired
	private WalkMapper walkMapper;
	
	// 신규 산책 개설
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
	
	// 산책 게시글 수정
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

	// 산책 리스트 
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

	// 산책 상세 페이지
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

	// 참여 댓글 가져오기
	@Override
	public CmtVo getWalkCmt(long idx) {
		ArrayList<Comment> normal = walkMapper.getWalkCmt(idx);
		ArrayList<Comment> join = walkMapper.getJoinCmt(idx);
		int applyCount = normal.size();
		int joinCount = join.size();
		CmtVo vo = new CmtVo(normal, join, applyCount, joinCount);
		return vo;
	}

	// 참여 댓글 insert
	@Override
	public boolean insertWalkCmt(Comment dto) {
		joinVo vo = new joinVo(dto.getWalk_idx(),dto.getMember_number());
		int i = walkMapper.checkCmt(vo);
		if(i == 1 ) return false;
		else {
			walkMapper.insertWalkCmt(dto);
			return true;
		}
	}
	
	// 산책 게시글 삭제 
	@Override
	public void walkDelete(long idx) {
		walkMapper.walkDelete(idx);
	}
	// 참여 댓글 자세히보기
	@Override
	public Comment getWalkCmtData(long idx) {
		Comment dto = walkMapper.getWalkCmtData(idx);
		return dto;
	}
	
//  참여 댓글 수락하기 (1) 회원번호 가져오기
	@Override
	public long selectByCmtIdx(long cmtIdx) {
		Long memNo = walkMapper.selectByCmtIdx(cmtIdx);
		return memNo;
	}
	
	// 참여 댓글 수락하기 (2) 수락하기
	
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
	
	// 좋아요 버튼
	@Override
	public void addHeart(joinVo vo) {
		walkMapper.addHeart(vo);
	}

	// 좋아요 취소
	@Override
	public void deleteHeart(joinVo vo) {
		walkMapper.deleteHeart(vo);
	}
	
	// 좋아요 개수 카운트
	@Override
	public int getWalkLike(long idx) {
		int likeCount = walkMapper.getWalkLike(idx);
		return likeCount;
	}

	@Override
	public MypagePetVO getCmtPetData(long member_number) {
		MypagePetVO vo = walkMapper.getCmtPetData(member_number);
		return vo;
	}
	
	// 산책 작성자 기본정보 가져오기
	@Override
	public Hashtable<String, Object> getMemData(long member_number) {
		Hashtable<String, Object> map = new Hashtable<String,Object>();
		MemberVO vo = walkMapper.getMemData(member_number);
		DetailMemberData detail = walkMapper.getDetailData(member_number);
		if(detail != null) {
			Date origin = detail.getWalk_date();
			DateFormat dayForm = new SimpleDateFormat("yyyy년 MM월 dd일");
			String day = dayForm.format(origin);
			long newCount = detail.getWalk_count() - 1;
			detail.setWalk_count(newCount);
			detail.setWalk_day(day);
			map.put("detail",detail);
		}
		map.put("member",vo);
		return map;
	}

	// 내가 좋아요 눌렀는지 확인
	@Override
	public long checkLikeToggle(long walk_idx, long member_number) {
		long check = walkMapper.checkLikeToggle(walk_idx, member_number);
		if(check == 0) log.info("좋아요 안누름");
		return check;
	}
}
