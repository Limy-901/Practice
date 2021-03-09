package pet.mvc.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopservice.CartService;
import pet.mvc.shopservice.ProductService;


@Log4j
@Controller
public class CartController {
	
	
	@Autowired
	private Cart cart;
	@Resource(name="CartServiceImpl")
	private CartService service;
	@Resource(name="ProductServiceImpl")
	private ProductService service2;
	
	
	//����Ʈ �ҷ�����
	@GetMapping("/cart")
	public String cart(Cart cart) {
		log.info("cartController ��ٱ���");
		return "/shop/cart";
	}
	
	@PostMapping("/cart")//���۵� ��ǰ ��ȣ�� �޴´�.
	public ModelAndView addProductsInCart(HttpServletRequest request, Cart cart,
	HttpServletResponse response) throws Exception{
		log.info("cartController ��ٱ��� �����Դ�");
		log.info("##������ īƮ��"+cart);
		HttpSession session =request.getSession();
		ArrayList<Cart> cartLists = new ArrayList<Cart>();
		//����Ʈ ����
		if(cart == null) return new ModelAndView("../","viewlists",null);
		//���࿡ cart�� ���� ���̸� �׳� �ε����� ���ư���!
		else {
			ArrayList<Cart> cartSession = (ArrayList)session.getAttribute("cartLists");
			//ArrayListŸ���� cartSession�� cartLists�� �ҷ�����.
			if(cartSession != null) {
				//���� cartSession�� ���� ������
				cartSession.add(cart);
				//���ǿ� cart��� ArrayList<Cart>������ ���밪�� add�����.
				log.info("����īƮ�ȿ�����"+cartSession);
				session.setAttribute("cartLists", cartSession);
				//�׸��� ���ǿ� ����� �� �ֵ��� cartSession�� setAttribute�����.
			}else {
				cartLists.add(cart);
				log.info("���� ���� ����"+cartSession);
				session.setAttribute("cartLists", cartLists);
			}
			//list��  product������ ��Ƴ��� ��
			ArrayList<Product> viewlists = new ArrayList<Product>();
			//���Ŀ� productŸ���� Arraylist�� �������ش���
			for(Cart list : cartLists) {
				//������ ���� cartLists�� ���빰�� ��  cartLists�� for���� �����ش�.
				long cart_product_code = list.getProduct_code();
				//�� ���� list�� product_code�� long Ÿ���� cart_product_code�� ���ٸ�
				Product product = service2.listS(cart_product_code);
				//������ ������ service2�� listS�޼ҵ忡 product_code�� �־� product�� ��ü ���빰�� �ҷ��� �� �ֵ��� �Ѵ�.
				viewlists.add(product);
				//���Ŀ� �� ������ �ִ� product�� viewlists�� �߰����ش�.(�־��ش�)
			}
			session.setAttribute("viewlists", viewlists);
			//�߰��� viewlists�� ���� session�� �־��ش�.
			log.info("$$$$viewlists:"+viewlists);
			ModelAndView mvvv = new ModelAndView("/shop/cart","viewlists",viewlists);
			return mvvv;
		}
	}
}
	