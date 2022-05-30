package pet.mvc.board;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	
	private String post_writer;
	private String post_subject;
	//private String post_content;
	
	private long post_idx;
	private long board_idx;
	private long member_number;
	
	private Date post_date;
	private long post_count;
	private int post_like;
	private long rnum;
	private String content;
	

	

	private String board_name;
	private ArrayList<BoardCmt> comment;
	//private ArrayList<BoardPic> pic;


}