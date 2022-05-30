package pet.admin.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Qna {
	private long post_idx;
	private long board_idx;
	private long member_number;
	private String post_writer;
	private String post_subject;
	private String content;
	private Date post_date;
	private String cmt_content;
	private String cmt_writer;
	private Date cmt_date;
	private String post_day;
	private String post_time;
	private String cmt_day;
	private String cmt_time;
}
