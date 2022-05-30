package pet.mvc.shopservice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Cart;


public interface CartService {
	
	public void addProductsInCart(Cart cart) throws Exception;
	public List<Cart> findCartProducts(long product_code) throws Exception;
}
