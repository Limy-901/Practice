package pet.message.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberReview {
	private long member_review_idx;
	private long walk_idx;
	private long member_number;
	private long walk_number;
	private Date walk_date;
	private Date send_date;
	private String member_review;
	private String day;
	private String walk_location;
}
