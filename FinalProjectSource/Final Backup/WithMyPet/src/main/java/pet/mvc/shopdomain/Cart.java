package pet.mvc.shopdomain;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Component("Cart")
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
	private long cart_code;
	private long product_code;
	private long member_number;
	private long cart_qty;
	private String cart_date;
	private long product_amount;
	private String product_size;
	private String product_name;
	private String product_price;
	private String product_content;
	private long catgo_code;
	
	
}
