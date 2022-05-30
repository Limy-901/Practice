package pet.walk.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class joinVo {
	private long walk_idx;
	private long member_number;
	
	public joinVo(long walk_idx, long member_number){
		this.walk_idx = walk_idx;
		this.member_number = member_number;
	}
}
