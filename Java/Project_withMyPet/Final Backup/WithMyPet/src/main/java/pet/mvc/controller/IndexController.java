package pet.mvc.controller;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.mvc.service.IndexService;
import pet.walk.vo.Walk;


@Log4j
@Controller
@AllArgsConstructor
public class IndexController {
	private IndexService indexService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		log.info("안녕");
		ArrayList<Walk> dtos = indexService.getWalkList();
		//쇼핑 추가되면, 쇼핑이랑 walk함께담는 껍데기 만들어서 해야함.
		ModelAndView mv = new ModelAndView("index","walks",dtos);
		return mv;
	}
}
