package pet.admin.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberWalkChart {
	private long member_number;
	private String member_name;
	private String walk_location;
	private long count;
	private Date recent;
	private long jcount;
	private String percent;
	private String day;
}
