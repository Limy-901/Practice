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
}
