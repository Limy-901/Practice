package pet.walk.vo;

import java.util.ArrayList;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class WalkListResult {
	private int cp;
	private int ps;
	private long totalCount;
	private ArrayList<Walk> list;
	private ArrayList<Comment> cmtList;
	private long totalPageCount;
	
	public WalkListResult(int cp, int ps, long totalCount, ArrayList<Walk> list, ArrayList<Comment> cmtList) {
		this.cp = cp;
		this.ps = ps;
		this.totalCount = totalCount;
		this.list = list;
		this.cmtList = cmtList;
		this.totalPageCount = calTotalPageCount();
	}
	
	private long calTotalPageCount() {
		long tpc = totalCount/ps;
		if(totalCount%ps != 0) tpc++;
		return tpc;
	}
}
