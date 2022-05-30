package pet.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import pet.member.vo.MemberVO;
import pet.mvc.mapper.memberMapper;


@Service
public class MemberServiceImpl implements MemberService {
   
   @Inject
   private memberMapper mapper;

   //�쉶�썝 媛��엯
   @Override
   public void join(MemberVO vo) throws Exception {
	   mapper.join(vo);
   }
   
   //�씠硫붿씪 以묐났泥댄겕
   @Override
   public int mailChk(MemberVO vo) throws Exception {
      int result = mapper.mailChk(vo);
      return result;
   }
   
   //濡쒓렇�씤
   @Override
   public MemberVO login(MemberVO lvo) {
      return mapper.login(lvo);
   }
   
   //留덉씠�럹�씠吏� 蹂몄씤�솗�씤
   @Override
   public MemberVO mypage(MemberVO lvo) {
      return mapper.mypage(lvo);
   }
   
   //�쉶�썝�젙蹂� �닔�젙
   @Override
   public void memberUpdateDo(MemberVO vo) throws Exception {
	   mapper.memberUpdateDo(vo);
   }

   //�븘�씠�뵒 李얘린
   @Override
   public MemberVO emailFind(MemberVO vo) throws Exception {
      return  mapper.emailFind(vo);
   }

   //�뙣�뒪�썙�뱶 李얘린
   @Override
   public MemberVO pwFind(MemberVO pvo) {
      return mapper.pwFind(pvo);
   }

   @Override
   public void pwModify(MemberVO vo) throws Exception {
	   mapper.pwModify(vo);
   }
   
   @Override
   public void memberModify(MemberVO vo) {
	   mapper.memberModify(vo);
   }

}