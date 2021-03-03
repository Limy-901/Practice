package pet.mvc.shopservice;

import java.util.ArrayList;
import java.util.List;

import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Category;
import pet.mvc.shopdomain.Option;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopdomain.ProductListResult;
import pet.mvc.shopdomain.Review;

public interface ProductService {
	ProductListResult getProductListResult(int cp, int ps);
	ProductListResult getProductListResult(String catgo, String keyword, int cp, int ps);
	Product listS(long catgo_code);
	void insertS(Product product);
	List<Category> listCatgoS(long catgo_code);
	Review contentReviewS(long review_number);
	ArrayList<Review> listReviewS(long review_number);
	void insertReview(Review review);
	ArrayList<Option> listOption(long product_code);
	void insertOption(Option option);
}
