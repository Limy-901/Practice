package pet.mvc.controller;




import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Category;
import pet.mvc.shopdomain.Option;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopdomain.ProductListResult;
import pet.mvc.shopdomain.Review;
import pet.mvc.shopservice.ProductService;

@Log4j
@Controller
public class ShopController {
	
	@Resource(name="ProductServiceImpl")
	private ProductService service;
	
	@RequestMapping("/category")
	public ModelAndView category(HttpServletRequest request, HttpSession session) {
		String catgo = request.getParameter("catgo");
		String keyword = request.getParameter("keyword");
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		
		//(1) cp
		int cp =1;
		if( cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			if(cpStr !=null) {
				cp = (Integer) cpObj;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("cp", cp);
		
		//(2) ps
		int ps =3;
		if( psStr == null) {
			Object psObj = session.getAttribute("ps");
			if(psObj !=null) {
				ps = (Integer) psObj;
			}
		}else {
			psStr = psStr.trim();
			int psParam = Integer.parseInt(psStr);
			
			Object psObj = session.getAttribute("ps");
			if(psObj !=null) {
				int psSession = (Integer) psObj;
				if(psSession !=psParam) {
					cp =1;
					session.setAttribute("ps", ps);
				}
			}
			ps = psParam;
		}
		session.setAttribute("ps", ps);
		ProductListResult listResult = null;
		ModelAndView mv = null;
		
		//(3) ModelAndView
		if(catgo !=null && keyword !=null) {
			listResult = service.getProductListResult(catgo, keyword, cp, ps);
			mv = new ModelAndView("shop/category","listResult",listResult);
			List<Product> li = listResult.getList();
			log.info("list size: "+li.size());
			
			if(listResult.getList().size() ==0) {
				log.info("(#3) listResult 실패");
				if(cp >1) return new ModelAndView("redirect:category?cp="+(cp-1));
				else return new ModelAndView("shop/category","listResult", null);
			}else {
				log.info("성공");
				return mv;
			}
		}else {
			listResult = service.getProductListResult(cp, ps);
			mv = new ModelAndView("shop/category","listResult",listResult);
			List<Product> li = listResult.getList();
			log.info("list size: "+li.size());
			
			if(listResult.getList().size() ==0) {
				log.info("?");
				if(cp>1) return new ModelAndView("redirect:category?cp="+(cp-1));
				else return new ModelAndView("shop/category","listResult", null);
			}else {
				log.info("성공");
				return mv;
			}
		}
		/*return "/shop/category";*/
	}
	@RequestMapping("/category2")
	public String category2() {
		log.info("category2로 왔다");
		return "/shop/category2";
	}
	@RequestMapping("/order")
	public String order() {
		return "/shop/order";
	}
	
	@GetMapping("/product")
	public ModelAndView product(@RequestParam long catgo_code) {
		List<Category> list = service.listCatgoS(catgo_code);
		ModelAndView mv = new ModelAndView("/shop/product","product",list);
		return mv;
	}
 	
 	@GetMapping("/productDes")
	public ModelAndView productDes(HttpSession session, @RequestParam long catgo_code,@RequestParam long review_number
			, Option option, long product_code) {
		log.info("##"+review_number+catgo_code+product_code);
		Product list = service.listS(catgo_code);
		ArrayList<Review> reviewCon = service.listReviewS(review_number);
		ArrayList<Option> optionlist= service.listOption(product_code);
		session.setAttribute("reviewCon", reviewCon);
		session.setAttribute("list", list);
		session.setAttribute("optionlist", optionlist);
		log.info("###productDes"+optionlist+reviewCon+list);
		session.setAttribute("productDes", list);
		ModelAndView mvv = new ModelAndView("/shop/productDes","productDes", list);
		return mvv;
	}
 	
 	@PostMapping("/productDes")
 	public String productDes(Review review) {
 		log.info("#왔니? review: "+ review);
 		service.insertReview(review);
 		log.info("###productDes"+review);
		return "redirect:productDes";
 	}
 	
	@RequestMapping("/productDes21")
	public ModelAndView productDes21(HttpSession session, @RequestParam long catgo_code,@RequestParam long review_number
			, Option option, long product_code) {
		log.info("@@"+review_number+catgo_code+product_code);
		Product list = service.listS(catgo_code);
		List<Review> reviewCon = service.listReviewS(review_number);
		ArrayList<Option> optionlist= service.listOption(product_code);
		session.setAttribute("list", list);
		session.setAttribute("reviewCon", reviewCon);
		session.setAttribute("optionlist", optionlist);
		log.info("@@@"+reviewCon+list+optionlist);
		ModelAndView mvvv = new ModelAndView("/shop/productDes21","productDes21",list);
		return mvvv;
	}
	
	
	@RequestMapping("/orderSu")
	public String orderSu() {
		return "/shop/orderSu";
	}
	

}
