package pet.mvc.mapper;

import pet.member.vo.MemberVO;

public interface memberMapper {
	void join(MemberVO member);
	int mailChk(MemberVO member);
	MemberVO login(MemberVO member);
	MemberVO mypage(MemberVO member);
	void memberUpdateDo(MemberVO member);
	MemberVO emailFind(MemberVO member);
	MemberVO pwFind(MemberVO member);
	MemberVO pwModify(MemberVO member);
	void memberModify(MemberVO member);
}
