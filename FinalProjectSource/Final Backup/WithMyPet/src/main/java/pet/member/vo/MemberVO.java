package pet.member.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberVO {
	private int member_number;
	private String member_email;
	private String member_password;
	private String member_name;
	private String member_address;
	private Date member_date;
}
