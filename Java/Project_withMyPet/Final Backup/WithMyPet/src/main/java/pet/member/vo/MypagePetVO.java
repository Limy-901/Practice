package pet.member.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data

public class MypagePetVO {
	private int member_number;
	private String pet_name;
	private String pet_sex;
	private String pet_age;
	private String pet_walkarea;
	private String pet_walkpoint;
	private String pet_fname;
	private String pet_ofname;
	private long pet_fsize;
}
