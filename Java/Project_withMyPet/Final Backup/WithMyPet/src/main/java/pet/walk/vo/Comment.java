package pet.walk.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
	private long walk_cmt_idx;
	private long walk_idx;
	private String walk_cmt_writer;
	private String walk_cmt_content;
	private Date walk_cmt_date;
	private long member_number;
	private String join_status;
}
