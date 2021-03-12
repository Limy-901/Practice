package pet.message.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.springframework.stereotype.Service;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.message.vo.MemberReview;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;
import pet.mvc.mapper.MessageMapper;

@AllArgsConstructor
@Service
@Log4j
public class MsgServiceImpl implements MsgService {
	MessageMapper msgMapper;
	
	// 최근 대화목록 리스트
	@Override
	public MsgListResult getAllMsgList(long member_number) {
		MsgListResult msgLists = new MsgListResult();
		ArrayList<Msg> lists = msgMapper.getAllMsgList(member_number);
		
		getTimes(lists); // 지난 시간 구하기
		msgLists.setChatList(lists);
		return msgLists;
		
	}

	// 1:1 주고받은 메시지 
	@Override
	public MsgListResult getMsgList(long member_number, long sender_number) {
		MsgListResult msgList = new MsgListResult();
		ArrayList<Msg> lists = msgMapper.getMsgList(member_number, sender_number);
		getTimes(lists); // 경과 시간 구한 후, msg_time 셋팅
		msgList.setChatList(lists);
		return msgList;
	}
	
	// 메시지 insert (= 보내기)
	@Override
	public void insertMsg(Msg msg) {
		log.info("## msg insert"+msg);
		msgMapper.insertMsg(msg);
	}
	
	// 경과 시간 구하는 로직 1, Date to Seconds
	public void getTimes(ArrayList<Msg> lists) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		String curDateStr = dateFormat.format(System.currentTimeMillis());
		ArrayList<Msg> times = new ArrayList<Msg>();
		Date curDate = null;
		try {
			curDate = dateFormat.parse(curDateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		for(Msg list : lists) {
			Date walkDate = list.getSenddate();
			long seconds = (curDate.getTime() - walkDate.getTime());
			String timeFormat = makeStrTime(seconds);
			list.setTime(timeFormat);
		}
	}
	// 경과 시간 구하는 로직 2, Seconds to String
	public String makeStrTime(long seconds) {
		long days = TimeUnit.MILLISECONDS.toDays(seconds);
		seconds -= TimeUnit.DAYS.toMillis(days);
        long hours = TimeUnit.MILLISECONDS.toHours(seconds);
        seconds -= TimeUnit.HOURS.toMillis(hours);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(seconds);
        seconds -= TimeUnit.MINUTES.toMillis(minutes);
        StringBuilder sb = new StringBuilder(64);
        if(days != 0) {
	        sb.append(days);
	        sb.append("일 ");
        }else if(hours != 0) {
        	sb.append(hours);
            sb.append("시간 ");
        }else if((days == 0) && (hours == 0)){
        	sb.append(minutes);
            sb.append("분");
        }
        sb.append(" 전");
        return(sb.toString());
	}

	// 읽지 않은 메시지 개수 카운트
	@Override
	public long getUnreadMsg(long member_number) {
		long count = msgMapper.getUnreadMsg(member_number);
		return count;
	}
	// 읽음 처리 후, 읽지 않은 메시지 카운트
	@Override
	public long msgRead(long member_number, long sender_number) {
		log.info("###읽었어!"+member_number+", "+sender_number);
		msgMapper.msgRead(member_number, sender_number);
		long unread = getUnreadMsg(member_number);
		return unread;
	}
	
	// 최근 일주일 이내, 매칭된 산책이 있는지 검색
	@Override
	public MemberReview selectRecentWalk(long member_number, long walk_number) {
		// 회원 번호로 둘이 함께 한 산책 있는지 검사
		MemberReview review = msgMapper.selectRecentWalk(member_number, walk_number);
		// 산책후기 작성했는지 검사
		// 일주일 내 산책인지 검사
		if(review != null) {
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String curDateStr = dateFormat.format(System.currentTimeMillis());
			String walkDateStr = dateFormat.format(review.getWalk_date());
			Date walkDate = null;
			Date curDate = null;
			try {
				curDate = dateFormat.parse(curDateStr);
				walkDate = dateFormat.parse(walkDateStr);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			long seconds = (curDate.getTime() - walkDate.getTime());
			long days = TimeUnit.MILLISECONDS.toDays(seconds);
			
			if(days > 7) return null;
			else {
				DateFormat dayForm = new SimpleDateFormat("yyyy년 MM월 dd일");
				String day = dayForm.format(walkDate);
				review.setDay(day);
				return review;
			}
		}else return null;
	}
	
	// 산책 한줄평 작성, 트랜잭션
	@Override
	public void writeReview(MemberReview memberReview, long member_number) {
		// 주최/참가에 따라서, insert시 member_number를 변경해줌 (myBatis에서 분기하지 않으려고)
		log.info("####이거가 memberReview"+memberReview);
		if(memberReview.getWalk_number() == member_number) {// 내가 참가자일때
			long origin = memberReview.getMember_number();
			memberReview.setMember_number(member_number);
			log.info("####바꿔줌"+origin+"을 "+memberReview.getMember_number());
		}
		log.info("####Here"+memberReview.getWalk_idx()+"번 글,"+member_number);
		msgMapper.updateJoin(memberReview.getWalk_idx(),member_number);
		msgMapper.writeReview(memberReview);
	}

}
