package pet.mvc.shopservice;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.mvc.shopdomain.Category;
import pet.mvc.shopdomain.Product;
import pet.mvc.shopdomain.ProductVo;
import pet.mvc.shopdomain.Review;
import pet.mvc.shopmapper.ProductMapper;
import pet.mvc.mapper.*;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class shopTests {
		private static final long catgo_code= 9;
		int cp;
		int ps;
		long review_number=6;
		
		@Autowired
		//private ProductMapper productMapper;
		private memberMapper memberMapper;
		/*
		
		@Test
		public void testList() {
			Product list = productMapper.listProduct(catgo_code);
			log.info("#list(1): "+ list);
		}
		
		@Test
		public void testPageList() {
			ProductVo productVo = new ProductVo(null, null, cp, ps);
			List<Product> list2 = productMapper.selectPerpage(productVo);
			log.info("#list(2):"+list2);
		}
		
		@Test
		public void testReview() {
			Review review = productMapper.contentReview(review_number);
			List<Category> list = productMapper.listCatgo(catgo_code);
			log.info("#list(3): "+review+list);
		}
		*/
		@Test
		public void InsertTest() {
			MemberVO member = new MemberVO();
			String address="1";
			String name="1";
			String password="1";
			String email="1";
			member.setMember_email(email);
			member.setMember_password(password);
			member.setMember_name(name);
			member.setMember_address(address);
			memberMapper.join(member);
			
			
			
		}
		/*
		@Test
		public void testcatgolist() {
			List<Category> list2 = productMapper.listCatgo(catgo_code);
			log.info("#list(2): "+ list2);
		}*/
	/*
	 * @Test public void testInsert() { Product product = new Product(-1, "오늘은",
	 * "12000", "겨울엔 두툼한 조끼가 최고", "#best", null, "g1.jpg", 1, 1);
	 * productMapper.insert(product); log.info("#productTests insert() 수행 완료"); }
	 */
	  
	/*
	 * @Test public void testDelete() { long seq = 11L; addressMapper.delete(seq);
	 * log.info("#AddressTests delete() 수행 완료"); }
	 */
	}