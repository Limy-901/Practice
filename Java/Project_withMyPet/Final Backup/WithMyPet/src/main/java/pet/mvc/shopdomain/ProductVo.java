package pet.mvc.shopdomain;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public class ProductVo {
	String catgo;
	String keyword;
	
	private int cp;
	private int ps;
	{
		cp=1;
		ps=5;
	}
	
	public int getStartRow() {
		return (cp-1) * ps;
	}
	public int getEndRow() {
		return cp * ps;
	}
}
