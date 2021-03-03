package pet.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pet.member.service.MemberService;
import pet.member.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class LoginController {
	
   private Logger logger = LoggerFactory.getLogger(LoginController.class);
   
   @Inject()
   private MemberService service;
   
   @Inject()
   private BCryptPasswordEncoder pwencoder;
   
   
   //로그인
   @RequestMapping(value = "/login.do", method = RequestMethod.GET)
   public String getLogin() throws Exception {
      logger.info("login.do 호출성공");
      return "member/login";
   }
   
   // 로그인 처리
      @RequestMapping(value = "/login.do", method = RequestMethod.POST)
      public ModelAndView postLogin(@ModelAttribute("MemberVO") MemberVO lvo, HttpSession session, HttpServletRequest request) {
         logger.info("로그인 처리 성공");
         
         ModelAndView mav = new ModelAndView();
         
         MemberVO vo = service.login(lvo);
         
         if(vo == null) {
            mav.addObject("msg", "아이디를 정확히 입력해 주세요.");
            mav.setViewName("member/signup");
            return mav;
         }
         
         boolean passMatch = pwencoder.matches(lvo.getMember_password(), vo.getMember_password());
         
         if (passMatch) {
        	 session.setAttribute("login", vo);
        	 mav.setViewName("member/mypage");
        	 return mav;
        	
         }else {
            mav.addObject("msg", "패스워드를 정확히 입력해주세요.");
            mav.setViewName("member/agree");
            return mav;
         }
      }
      
      
   //로그아웃 처리
   @RequestMapping(value = "/logout.do")
   public String logout(HttpSession session, HttpServletRequest request) {
      logger.info("logout.do 호출 성공");
      request.getSession().removeAttribute("login");
      session.removeAttribute("login");
      session.invalidate();
      return "index";
   }
   
   
   //아이디 찾기 창
   @RequestMapping(value = "/idFind.do", method = RequestMethod.GET)
   public String getIdFind() throws Exception {
      logger.info("idFind.do 호출 성공");
      return "member/idFind";
   }
   //패스워드 찾기
   @RequestMapping(value = "/pwFind.do", method = RequestMethod.GET)
   public String getPwFind() throws Exception {
      logger.info("get pwFind");
      return "member/pwFind";
   }
   
   
   //패스워드 수정
   @RequestMapping(value = "/pwModify.do", method = RequestMethod.GET)
   public String getPwModify() throws Exception {
      logger.info("get pwModify");
      return "member/pwModify";
   }
   
   
   //회원 패스워드 수정
      @RequestMapping(value = "/memberPwdModify.do", method = RequestMethod.GET)
      public String getMemberPwModify() throws Exception {
         logger.info("get getMemberPwModify");
         return "member/memberPwdModify";
      }
      
      
   //아이디 찾기
   @RequestMapping(value = "/idFind.do", method = RequestMethod.POST)
   public String idFind(MemberVO vo, Model model) throws Exception {
      logger.info("아이디 찾기 호출");
      MemberVO mvo  = service.emailFind(vo);
      if(mvo != null) {
         model.addAttribute("mem",mvo);
         return "member/emailFindSuccess";
      }else {
         model.addAttribute("msg","이메일을 틀리게 입력 하셨거나 회원이 아닙니다");
         return "member/emailFind";
      }
   }
   
   
   // 패스워드 찾기
      @RequestMapping(value = "/pwFind.do", method = RequestMethod.POST)
      public ModelAndView pwFind(@ModelAttribute("MemberVO") MemberVO pvo, HttpSession session, HttpServletRequest request) {
         logger.info("pwFind.do pwFind.do 호출 성공");
         ModelAndView mav = new ModelAndView();
         MemberVO vo = service.pwFind(pvo);
         if (vo != null) {
            session.setAttribute("pwFind", vo);
            mav.setViewName("member/pwModify");
            return mav;
         }else {
            mav.addObject("msg", "아이디와 이메일을 정확하게 입력해주시길 바랍니다.");
            mav.setViewName("member/pwFind");
            return mav;
         }
      }
      
      
   //패스워드 수정
      @RequestMapping(value = "/pwModify.do", method = RequestMethod.POST)
      public String memberUpdate(@ModelAttribute MemberVO vo, HttpSession session) throws Exception {
         logger.info("패스워드 변경 성공");
         String secPwd = pwencoder.encode(vo.getMember_password());
         vo.setMember_password(secPwd);
         service.pwModify(vo);
         session.invalidate();
         return "member/login";
      }
}