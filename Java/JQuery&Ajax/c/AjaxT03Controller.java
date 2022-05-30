package yim.md.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yim.md.domain.Address;
import yim.md.service.AddressAjaxService;

@Controller
@RequestMapping("ajax03")
public class AjaxT03Controller {

	@Autowired
	private AddressAjaxService service;
	
	@GetMapping("search01.do")
	public @ResponseBody Address search01(long seq, HttpServletResponse response) {
		// 뷰를 리턴하는게 아니라서, void여도 됨.
		Address address = service.selectBySeqS(seq);
		return address;
	}
	@PostMapping("search02.do")
	public @ResponseBody List<Address> search02(String name, HttpServletResponse response) {
		List<Address> list = service.selectByNameS(name);
		return list;
	}
}
