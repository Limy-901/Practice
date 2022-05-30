package yim.md.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ajax")
public class AjaxIndexController {
	@RequestMapping("test01")
	public String t01() {
		return "ajax/test01";
	}
	@RequestMapping("test02")
	public String t02() {
		return "ajax/test02";
	}
	@RequestMapping("test03")
	public String t03() {
		return "ajax/test03";
	}
	@RequestMapping("test04")
	public String t04() {
		return "ajax/test04";
	}
	
	@RequestMapping("requestbody.do")
	public String requestbody() {
		return "requestbody";
	}
}
