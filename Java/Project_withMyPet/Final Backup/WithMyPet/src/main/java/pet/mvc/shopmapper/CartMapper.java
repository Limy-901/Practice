package pet.mvc.shopmapper;



import java.util.List;

import pet.mvc.shopdomain.Cart;


public interface CartMapper {
	List<Cart> selectCountInCart(long product_code);
	void insertProductsInCart(Cart cart);
}
