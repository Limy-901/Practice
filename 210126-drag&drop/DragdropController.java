package yim.md.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;
import yim.md.service.DragdropServiceImpl;

@Controller
@Log4j
@RequestMapping("file")
// 컨트롤러 호칭이같아도, 메소드가 다르면 각자 잘 찾아감.
public class DragdropController {
	
	@GetMapping("form_dd.do")
	public String form() {
		return "drag_drop/form";
	}
	
	@Autowired
	private DragdropServiceImpl service;
	
	@PostMapping("fileUpload.do")
	public String fileUpload(MultipartHttpServletRequest mhsr) {
		service.setMultipartRequest(mhsr);
		Map<String, List<Object>> map = service.getUpdateFileName();
		
		String appendData = mhsr.getParameter("temp");
		log.info("#drag&drop ap : "+map+", apppedData:"+appendData);
		return "redirect:list";
	}
}
