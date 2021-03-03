package pet.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.extern.log4j.Log4j;
import pet.walk.vo.Mailer;

@Controller
public class MailController {
	@Autowired(required=false)
	private Mailer mailer; 

	@RequestMapping(value = "/sendmail.do")
	@ResponseBody
	public String sendmail(String receiver,String sender) {
		String subject = sender+"���� �Բ� ��å�ϰ� �;��մϴ�.";
		try {
			mailer.sendMail(receiver, subject, "��å��û����");
		} catch (Exception e) {
			e.printStackTrace();
			return "FAIL";			
		}
		
		return "SUCC";
	}	
}