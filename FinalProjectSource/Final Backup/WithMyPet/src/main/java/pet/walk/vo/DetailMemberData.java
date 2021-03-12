package pet.walk.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DetailMemberData {
	private long member_number;
	private Date walk_date;
	private String walk_day;
	private long walk_count;
	private String review;
	private long following;
	private long follower;
}
