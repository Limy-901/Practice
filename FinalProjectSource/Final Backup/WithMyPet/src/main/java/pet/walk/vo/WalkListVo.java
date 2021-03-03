package pet.walk.vo;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@NoArgsConstructor
public class WalkListVo {
	
	private int cp;
	private int ps;
	private String orderType;
	private String keyword;
	
	public int getStartRow() {
		log.info("#StartRow:"+(cp-1) * ps);
		return (cp-1) * ps;
	}
	public int getEndRow() {
		log.info("#EndRow:"+cp*ps);
		return cp * ps;
	}
}
