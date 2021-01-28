package yim.bt.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {

	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@RequestMapping("/")
	public String index(Locale locale, Model model) {
		return "index";
	}
	
	@RequestMapping("/about.html")
	public String about(Locale locale, Model model) {
		return "about";
	}
	
	@RequestMapping("/blog.html")
	public String blog(Locale locale, Model model) {
		return "blog";
	}
	
	@RequestMapping("/codes.html")
	public String codes(Locale locale, Model model) {
		return "codes";
	}
	@RequestMapping("/contact.html")
	public String contact(Locale locale, Model model) {
		return "contact";
	}
	
	@RequestMapping("/menu.html")
	public String menu(Locale locale, Model model) {
		return "menu";
	}
	
	@RequestMapping("/single.html")
	public String single(Locale locale, Model model) {
		return "single";
	}
}
