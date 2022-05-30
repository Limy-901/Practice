package pet.mvc.shopdomain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Option {
	private long product_code;
	private long product_amount;
	private String product_size;
	private String product_name;
	private String product_price;
	private String product_content;
	private String product_tag;
	private Date product_date;
	private long product_like;
	private long catgo_code;
	private long review_number;
	private long member_number;
	private String review_subject;
	private String review_message;
	private String review_email;
	
}
