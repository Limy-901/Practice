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

import lombok.extern.log4j.Log4j;
import pet.member.service.MemberService;
import pet.member.vo.MemberVO;
import pet.message.service.MsgService;

@Log4j
@Controller
@RequestMapping(value = "/member")
public class LoginController {
	
   private Logger logger = LoggerFactory.getLogger(LoginController.class);
   
   @Inject()
   private MemberService service;
   
   @Inject()
   private MsgService msgService;
   
   @Inject()
   private BCryptPasswordEncoder pwencoder;
   
   
   //�α���
   @RequestMapping(value = "/login.do", method = RequestMethod.GET)
   public String getLogin() throws Exception {
      logger.info("login.do ȣ�⼺��");
      return "member/login";
   }
   
   // �α��� ó��
      @RequestMapping(value = "/login.do", method = RequestMethod.POST)
      public ModelAndView postLogin(@ModelAttribute("MemberVO") MemberVO lvo, HttpSession session, HttpServletRequest request) {
         logger.info("�α��� ó�� ����");
         
         ModelAndView mav = new ModelAndView();
         
         MemberVO vo = service.login(lvo);
         
         if(vo == null) {
            mav.addObject("msg", "���̵� ��Ȯ�� �Է��� �ּ���.");
            mav.setViewName("member/signup");
            return mav;
         }
         
         boolean passMatch = pwencoder.matches(lvo.getMember_password(), vo.getMember_password());
         
         if (passMatch) {
        	 session.setAttribute("login", vo);
        	 long member_number = vo.getMember_number();
        	 long count = msgService.getUnreadMsg(member_number);
        	 session.setAttribute("unread", count); // 읽지 않은 메시지 개수 카운트
        	 log.info("##안읽은 갯수"+count);
        	 mav.setViewName("member/mypage");
        	 return mav;
        	
         }else {
            mav.addObject("msg", "�н����带 ��Ȯ�� �Է����ּ���.");
            mav.setViewName("member/agree");
            return mav;
         }
      }
      
      
   //�α׾ƿ� ó��
   @RequestMapping(value = "/logout.do")
   public String logout(HttpSession session, HttpServletRequest request) {
      logger.info("logout.do ȣ�� ����");
      request.getSession().removeAttribute("login");
      session.removeAttribute("login");
      session.invalidate();
      return "index";
   }
   
   
   //���̵� ã�� â
   @RequestMapping(value = "/idFind.do", method = RequestMethod.GET)
   public String getIdFind() throws Exception {
      logger.info("idFind.do ȣ�� ����");
      return "member/idFind";
   }
   //�н����� ã��
   @RequestMapping(value = "/pwFind.do", method = RequestMethod.GET)
   public String getPwFind() throws Exception {
      logger.info("get pwFind");
      return "member/pwFind";
   }
   
   
   //�н����� ����
   @RequestMapping(value = "/pwModify.do", method = RequestMethod.GET)
   public String getPwModify() throws Exception {
      logger.info("get pwModify");
      return "member/pwModify";
   }
   
   
   //ȸ�� �н����� ����
      @RequestMapping(value = "/memberPwdModify.do", method = RequestMethod.GET)
      public String getMemberPwModify() throws Exception {
         logger.info("get getMemberPwModify");
         return "member/memberPwdModify";
      }
      
      
   //���̵� ã��
   @RequestMapping(value = "/idFind.do", method = RequestMethod.POST)
   public String idFind(MemberVO vo, Model model) throws Exception {
      logger.info("���̵� ã�� ȣ��");
      MemberVO mvo  = service.emailFind(vo);
      if(mvo != null) {
         model.addAttribute("mem",mvo);
         return "member/emailFindSuccess";
      }else {
         model.addAttribute("msg","�̸����� Ʋ���� �Է� �ϼ̰ų� ȸ���� �ƴմϴ�");
         return "member/emailFind";
      }
   }
   
   
   // �н����� ã��
      @RequestMapping(value = "/pwFind.do", method = RequestMethod.POST)
      public ModelAndView pwFind(@ModelAttribute("MemberVO") MemberVO pvo, HttpSession session, HttpServletRequest request) {
         logger.info("pwFind.do pwFind.do ȣ�� ����");
         ModelAndView mav = new ModelAndView();
         MemberVO vo = service.pwFind(pvo);
         if (vo != null) {
            session.setAttribute("pwFind", vo);
            mav.setViewName("member/pwModify");
            return mav;
         }else {
            mav.addObject("msg", "���̵�� �̸����� ��Ȯ�ϰ� �Է����ֽñ� �ٶ��ϴ�.");
            mav.setViewName("member/pwFind");
            return mav;
         }
      }
      
      
   //�н����� ����
      @RequestMapping(value = "/pwModify.do", method = RequestMethod.POST)
      public String memberUpdate(@ModelAttribute MemberVO vo, HttpSession session) throws Exception {
         logger.info("�н����� ���� ����");
         String secPwd = pwencoder.encode(vo.getMember_password());
         vo.setMember_password(secPwd);
         service.pwModify(vo);
         session.invalidate();
         return "member/login";
      }
}