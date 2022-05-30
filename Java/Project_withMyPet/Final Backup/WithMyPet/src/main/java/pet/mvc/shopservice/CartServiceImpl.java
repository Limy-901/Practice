package pet.mvc.shopservice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopmapper.CartMapper;
import pet.mvc.shopmapper.ProductMapper;


@Log4j
@Service("CartServiceImpl")
public class CartServiceImpl implements CartService {

	
	@Autowired
	private CartMapper cartMapper;
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private Cart cart;
	@Override
	public List<Cart> findCartProducts(long product_code) throws Exception {
		//테이블에 추가하기 전에 동일한 상품 번호의 개수를 조회
		log.info("listCart 잘나옴: "+product_code);
		List<Cart> c = cartMapper.selectCountInCart(product_code);
		if(c !=null) log.info("cart 널아님:" +c);
		return cartMapper.selectCountInCart(product_code);
	}
	@Override
	public void addProductsInCart(Cart cart) throws Exception {//장바구니에 추가한다.
		cartMapper.insertProductsInCart(cart);
	}
}
