package yim.md.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import yim.md.domain.Address;
import yim.md.service.AddressAjaxService;

@RestController
// 그전엔 다 일반 컨트롤러였음. 이번엔 rest 
@RequestMapping("ajax04")
public class AjaxT04Controller {
	@Autowired
	private AddressAjaxService service;
	
	@GetMapping(value="search01", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})//.do없어도 json
	public @ResponseBody Address search01(long seq, HttpServletResponse response) {
		// 뷰를 리턴하는게 아니라서, void여도 됨.
		Address address = service.selectBySeqS(seq);
		return address;
	}
	@PostMapping(value="search02", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody List<Address> search02(String name, HttpServletResponse response) {
		List<Address> list = service.selectByNameS(name);
		return list;
	}
}
