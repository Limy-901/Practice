package soo.md.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import soo.md.domain.Address;
import soo.md.service.AddressAjaxService;

@Controller
@RequestMapping("auto")
public class AutoController {
	@Autowired
	private AddressAjaxService service;
	
	@GetMapping("auto.do")
	public String showView() {
		return "auto/autocomplete";
	}

	@PostMapping(value="autoData", 
			produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE}) 
	public @ResponseBody List<Address> getChartData(String writer){
		List<Address> list = service.selectByNameS(writer);
		
		return list;
	}
}
