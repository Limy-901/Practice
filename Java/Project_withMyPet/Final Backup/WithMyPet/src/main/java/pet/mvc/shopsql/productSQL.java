package pet.mvc.shopsql;

public class productSQL {
	public static final String SELECT = "select * from PRODUCT order by product_code desc";
	public static final String insert = "insert into PRODUCT values(?,?,?,?,?,?,?,?,?)";
}
