package pet.mvc.board;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardCmt {
	private long comment_idx;
	private long post_idx;
	private int board_idx;
	private long member_number;
	private String cmt_content;
	private String cmt_writer;
	private Date cmt_date;
}
