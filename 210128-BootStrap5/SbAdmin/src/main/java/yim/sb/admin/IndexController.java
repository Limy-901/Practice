package yim.sb.admin;

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
	@RequestMapping("/blank.html")
	public String blank(Locale locale, Model model) {
		return "blank";
	}
	@RequestMapping("/buttons.html")
	public String buttons(Locale locale, Model model) {
		return "buttons";
	}
	@RequestMapping("/flot.html")
	public String flot(Locale locale, Model model) {
		return "flot";
	}
	@RequestMapping("/forms.html")
	public String forms(Locale locale, Model model) {
		return "forms";
	}
	@RequestMapping("/grid.html")
	public String grid(Locale locale, Model model) {
		return "grid";
	}
	
	@RequestMapping("/icons.html")
	public String icons(Locale locale, Model model) {
		return "icons";
	}
	@RequestMapping("/login.html")
	public String login(Locale locale, Model model) {
		return "login";
	}
	@RequestMapping("/morris.html")
	public String morris(Locale locale, Model model) {
		return "morris";
	}
	@RequestMapping("/notifications.html")
	public String nofitications(Locale locale, Model model) {
		return "notifications";
	}
	@RequestMapping("/panels-wells.html")
	public String panelswells(Locale locale, Model model) {
		return "panels-wells";
	}
	@RequestMapping("/tables.html")
	public String tables(Locale locale, Model model) {
		return "tables";
	}
	@RequestMapping("/typography.html")
	public String typography(Locale locale, Model model) {
		return "typography";
	}
	
	
}
