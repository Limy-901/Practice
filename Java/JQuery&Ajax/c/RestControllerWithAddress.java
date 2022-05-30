package yim.md.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;
import yim.md.domain.Address;

@RestController
@RequestMapping("rest")
@Log4j
public class RestControllerWithAddress {
	// 데이터를 하나 보내려면, text를 보내는게 가장 쉬움.  (html / json / xml / text)
	// 여기서는 text로 할거라서, String 형태로 타입을 주자. 
	
	@GetMapping(value="/getText", produces="text/plain;charset=utf-8")
	public String getText() {
		return "안녕"; //index.jsp로 갔었지만, 여기는 rest기때문에, 여기서는 그냥 String text를 리턴한다.
		// 안녕 이라는 텍스트를 브라우저로 보냄.
	}
	@GetMapping(value="/getAddress")
	//, produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE} 있어도 되고 없어도 됨.
	public Address getAddress() {
		return new Address(1,"홍길동","서울시", new Date(2021-1900,1-1,25));
	}
	
	@GetMapping("getList")
	public List<Address> getList(){
		List<Address> list = new ArrayList<Address>();
		Address a1 = new Address(1,"홍길동","서울시", new Date(2021-1900,1-1,25));
		Address a2 = new Address(2,"김길동","서울시", new Date(2021-1900,1-1,25));
		list.add(a1); list.add(a2);
		
		return list;
	}
	
	// 이것은 맵!!
	@GetMapping("getMap")
	public Map<String, Address> getMap() {
		Map<String, Address> map = new HashMap<String, Address>();
		Address a1 = new Address(1,"홍길동","서울시", new Date(2021-1900,1-1,25));
		Address a2 = new Address(2,"김길동","서울시", new Date(2021-1900,1-1,25));
		map.put("first", a1);
		map.put("second",a2);
		return map;
	}
	
	@GetMapping(value="check", params= {"height", "weight"})
	// 서버에 상태값을 알려줄때, (브라우저에서) ResponseEntity 를 쓴다.
	public ResponseEntity<Address> check(double height,double weight){
		ResponseEntity<Address> result = null;
		Address a = new Address(3,""+height, ""+weight, new Date(2021-1900,1-1,25));
		if(height<150) {
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(a);
		}else {
			result = ResponseEntity.status(HttpStatus.OK).body(a);
		}
		return result;
	}
	
	@GetMapping(value="product/{cat}/{pid}") // 보내진 경로에서 추출해서 파라미터로 넣는 것.
	public String[] getPath(@PathVariable("cat") String cat, @PathVariable int pid) { // bag/ 001 를 cat, pid로 매핑하기.
		String strs[] = {"카테고리 : "+cat+", 상품번호 : "+pid};
		
		return strs;
	}
	
	/// 클라이언트에서 json data 받아서, 서버측에서 dto로 바꾸기.
	@PostMapping(value="json_dto")
	public Address conver(@RequestBody Address dto) {
		log.info("@converted dto:"+dto);
		return dto;
	}
	
}
