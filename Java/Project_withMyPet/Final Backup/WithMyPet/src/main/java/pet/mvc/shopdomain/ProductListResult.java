package pet.mvc.shopdomain;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductListResult {
	private int cp;
	private long totalCount;
	private int ps;
	private List<Product> list;
	private long totalPageCount;
	
	public ProductListResult(int cp, long totalCount, int ps, List<Product> list) {
		this.cp = cp;
		this.totalCount = totalCount;
		this.ps = ps;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
	}
	private long calTotalPageCount() {
		long tpc = totalCount/ps;
		if(totalCount%ps !=0) tpc++;
		
		return tpc;
	}
}
