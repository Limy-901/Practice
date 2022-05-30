package yim.md.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import yim.md.domain.Address;
import yim.md.service.AddressAjaxService;

@Controller
@RequestMapping("ajax02")

public class AjaxT02Controller {
	//자동으로 json 형태 만들어주기.
	@Autowired
	private AddressAjaxService service;
	
	@GetMapping("search01.do")
	public void search01(long seq, HttpServletResponse response) {
		// 뷰를 리턴하는게 아니라서, void여도 됨.
		Address address = service.selectBySeqS(seq);
		
		ObjectMapper om = new ObjectMapper();
		try {
			String json = om.writeValueAsString(address);
			//dto객체를 string(json객체)으로 써라.
			response.setContentType("application/json;charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.print(json);
		}catch(IOException ie) {}
	}
	@PostMapping("search02.do")
	public void search02(String name, HttpServletResponse response) {
		List<Address> list = service.selectByNameS(name);
		
		ObjectMapper om = new ObjectMapper();
		try {
			String json = om.writeValueAsString(list);
			//dto객체를 string(json객체)으로 써라.
			response.setContentType("application/json;charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.print(json);
		}catch(IOException ie) {}
		
	}
}
