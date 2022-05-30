package pet.mvc.shopmapper;

import java.util.ArrayList;
import java.util.List;

import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Category;
import pet.mvc.shopdomain.Option;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopdomain.ProductVo;
import pet.mvc.shopdomain.Review;



public interface ProductMapper {
	List<Product> selectPerpage(ProductVo productVo);
	List<Product> selectByCatgo(ProductVo productVo);
	long selectBySeq(long product_code);
	long selectCount();
	long selectCountByCatgo(ProductVo productVo);
	void insert(Product product);
	Product listProduct(long catgo_code);
	List<Category> listCatgo(long catgo_code);
	Review contentReview(long review_number);
	List<Product> listProduct2(long catgo_code);
	ArrayList<Review> listReview2(long review_number); 
	void insertReview(Review review);
	List<Product> selectCountInCart(long catgo_code);
	ArrayList<Option> listOption(long product_code);
	void insertOption(Option option);
}

