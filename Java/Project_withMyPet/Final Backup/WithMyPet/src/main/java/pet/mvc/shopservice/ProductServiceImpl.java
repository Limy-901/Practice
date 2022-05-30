package pet.mvc.shopservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import lombok.extern.log4j.Log4j;
import pet.mvc.shopdomain.Cart;
import pet.mvc.shopdomain.Category;
import pet.mvc.shopdomain.Option;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopdomain.ProductListResult;
import pet.mvc.shopdomain.ProductVo;
import pet.mvc.shopdomain.Review;
import pet.mvc.shopmapper.ProductMapper;
import org.springframework.dao.DataAccessException;
@Log4j
@Service("ProductServiceImpl")

public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public ProductListResult getProductListResult(int cp, int ps) {
		long totalCount = productMapper.selectCount();
		ProductVo productVo = new ProductVo(null, null, cp, ps);
		List<Product> list = productMapper.selectPerpage(productVo);
		return new ProductListResult(cp, totalCount, ps, list);
	}

	@Override
	public ProductListResult getProductListResult(String catgo, String keyword, int cp, int ps) {
		ProductVo productVo = new ProductVo(catgo, keyword, cp, ps);
		long totalCount = productMapper.selectCountByCatgo(productVo);
		List<Product> list = productMapper.selectByCatgo(productVo);
		return new ProductListResult(cp, totalCount, ps, list);
	}
	@Override
	public Product listS(long catgo_code) {
		Product p = productMapper.listProduct(catgo_code);
		if(p !=null) log.info("널아님 catgo_code: "+catgo_code);
		return productMapper.listProduct(catgo_code);
	}

	@Override
	public void insertS(Product product) {
		productMapper.insert(product);
	}

	@Override
	public List<Category> listCatgoS(long catgo_code) {
		log.info("productMapper.listCatgo(catgo_code): "+catgo_code);
		log.info("잘나옴");
		List<Category> r = productMapper.listCatgo(catgo_code);
		if(r != null) log.info("널아님");
		log.info("productMapper.listCatgo(catgo_code): "+productMapper.listCatgo(catgo_code));
		return productMapper.listCatgo(catgo_code);
	}

	@Override
	public Review contentReviewS(long review_number) {
		log.info("productMapper.listReview(review_number"+review_number);
		log.info("잘나옴");
		Review rr = productMapper.contentReview(review_number);
		if(rr !=null) log.info("널아님");
		return productMapper.contentReview(review_number);
	}

	@Override
	public ArrayList<Review> listReviewS(long review_number) {
		return productMapper.listReview2(review_number);
	}

	@Override
	public void insertReview(Review review) {
		log.info("제발 인서트야 되라");
		productMapper.insertReview(review);
		log.info("최종:"+review);
	}

	@Override
	public ArrayList<Option> listOption(long product_code) {
		log.info("option으로 들어옴: "+product_code);
		ArrayList<Option> op = productMapper.listOption(product_code);
		log.info("option : "+ op);
		return productMapper.listOption(product_code);
	}

	@Override
	public void insertOption(Option option) {
		log.info("insertOption 들어옴 :"+option);
		productMapper.insertOption(option);
		log.info("option: "+option);
	}
	
}
