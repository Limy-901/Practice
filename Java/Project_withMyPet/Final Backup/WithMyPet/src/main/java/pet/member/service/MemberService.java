package pet.member.service;

import pet.member.vo.MemberVO;


public interface MemberService {

   //회원 가입
   public void join(MemberVO vo) throws Exception;
   
   //이메일 중복체크
   public int mailChk(MemberVO vo) throws Exception;
   
   //로그인
   public MemberVO login(MemberVO lvo);
   
   //마이페이지 본인확인
   public MemberVO mypage(MemberVO lvo);
   
   //회원정보 수정
   public void memberUpdateDo(MemberVO vo) throws Exception;
   
   //아이디 찾기
   public MemberVO emailFind(MemberVO vo) throws Exception;

   //패스워드 찾기
   public MemberVO pwFind(MemberVO pvo);
   
   //패스워드 변경
   public void pwModify(MemberVO vo) throws Exception;
   
   //회원정보 전체 수정
   public void memberModify(MemberVO vo) throws Exception;
      
   
}