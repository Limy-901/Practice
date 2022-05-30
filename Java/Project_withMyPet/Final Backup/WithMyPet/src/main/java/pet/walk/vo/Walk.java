package pet.walk.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Walk {
	
	private long walk_idx;
	private long member_number;
	private String walk_writer;
	private String walk_type;
	private String walk_subject;
	private String walk_content;
	private Date walk_rdate;
	private long walk_count;
	private String walk_location;
	private Timestamp walk_date;
	private ArrayList<Comment> normalCmts;
	private ArrayList<Comment> joinCmts;
	private int like;
	private int apply;
	private int join;
	private String day;
	private String time;
}
