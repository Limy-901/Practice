package pet.mvc.shopdomain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	private long member_number;
	private String review_subject;
	private String review_message;
	private String review_email;
	private long review_number;
	private long catgo_code;
}
