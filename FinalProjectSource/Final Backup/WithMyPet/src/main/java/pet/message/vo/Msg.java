package pet.message.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Msg {
	private long msg_idx;
	private long member_number;
	private long sender_number;
	private String msg_content;
	private Date opendate;
	private Date senddate;
	private String sender_name;
	private String member_name;
	private String time;
	
	public Msg (long member_number, long sender_number, String msg_content) {
		this.member_number = member_number;
		this.sender_number = sender_number;
		this.msg_content = msg_content;
	}
}
