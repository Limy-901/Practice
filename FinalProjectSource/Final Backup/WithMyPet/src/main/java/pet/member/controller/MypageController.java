package pet.member.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pet.member.service.MemberService;
import pet.member.vo.MemberVO;


@Controller
@RequestMapping(value = "/member")
public class MypageController {
	
   private Logger logger = LoggerFactory.getLogger(MemberController.class);
   
   @Inject
   private MemberService service;
   
   @Inject
   private BCryptPasswordEncoder pwencoder;
   
   
   //정보수정
   @RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
   public String getMemberupdatedo() throws Exception {
	      logger.info("mypage.do 호출 성공");
	      return "/member/signup";
	   }
   
      //정보수정 처리
	   @RequestMapping(value = "/mypage.do", method = RequestMethod.POST)
	  
	   public String postMemberupdatedo(@ModelAttribute MemberVO vo , HttpSession session,  HttpServletRequest request) throws Exception {
		  MemberVO vo2 = (MemberVO) session.getAttribute("login");
		 
		 
	      logger.info("mypage 정보수정 호출 성공"+vo2.getMember_number());
	     
	      vo.setMember_number(vo2.getMember_number());	
	      
           //  브라우저에서 입력한 패스워드를 암호화한다.
           String secPwd = pwencoder.encode(vo.getMember_password());
           logger.info("정보수정 : " +vo.getMember_number()+"#s"+ vo.getMember_password() + ", "+vo.getMember_name() + ", " + vo.getMember_address());
           
           //  암호화된 비밀번호를 VO에 SET한다.
           vo.setMember_password(secPwd);
           
           //  DB에 회원가입 처리 성공
           service.memberModify(vo);
           return "member/mypage";
         //마이페이지 수정이 아닌 진짜 마이페이지 창으로 나가야함
      }
}