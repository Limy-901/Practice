package day09.bank;

import java.sql.*;

public class TransferImpl implements Transfer {
	private Connection con;
	private PreparedStatement pstmt1, pstmt2, pstmt3, pstmt4, pstmt5, pstmt6;
	public TransferImpl() {
		try {
			 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. 드라이버 로딩 성공");
			con = DriverManager.getConnection(Info.url, Info.usr, Info.pwd);
			con.setAutoCommit(false);
			System.out.println("2. 커넥션 생성 성공");
			pstmt1 = con.prepareStatement(Sql.sql1);
			pstmt2 = con.prepareStatement(Sql.sql2);
			pstmt3 = con.prepareStatement(Sql.sql3);
			pstmt4 = con.prepareStatement(Sql.sql4);
			pstmt5 = con.prepareStatement(Sql.sql5);
			pstmt6 = con.prepareStatement(Sql.sql6);
			System.out.println("3. 스테이트먼트 생성 성공");
		}catch(ClassNotFoundException cnfe) {
			System.out.println("TransferImpl() cnfe: "+ cnfe);
		}catch(SQLException se) {
			System.out.println("TransferImpl() se: "+ se);
		}
	}
	@Override
	public boolean isMemeber(String email) {
		ResultSet rs = null;
		try {
			pstmt1.setString(1, email);
			rs = pstmt1.executeQuery();
			if(rs.next()) return true;
			else return false;
		}catch(SQLException se) {
			return false;
		}finally {
			try {
				rs.close();
			}catch(SQLException se){}
		}
	}

	@Override
	public boolean checkBalance(String sender, long amount) {
		ResultSet rs = null;
		try {
			pstmt2.setString(1, sender);
			rs = pstmt2.executeQuery();
			if(rs.next()) {
				Long balance = rs.getLong(1);
				if((balance-amount) >= 0) {
					return true;
				}else {
					return false;
				}
			}else {
				return false;
			}
		}catch(SQLException se) {
			return false;
		}finally {
			try {
				rs.close();
			}catch(SQLException se){}
		}
	}

	@Override
	public boolean minus(String sender, long amount) {
		try {
			pstmt3.setString(1, sender);
			pstmt3.setLong(2, amount);
			pstmt3.setString(3, sender);
			int i = pstmt3.executeUpdate();
			if(i>0) return true;
			else return false;
		}catch(SQLException se) {
			return false;
		}
	}

	@Override
	public boolean plus(String receiver, long amount) {
		try {
			pstmt4.setString(1, receiver);
			pstmt4.setLong(2, amount);
			pstmt4.setString(3, receiver);
			int i = pstmt4.executeUpdate();
			if(i>0) return true;
			else return false;
		}catch(SQLException se) {
			return false;
		}
	}

	@Override
	public boolean log(String sender, String receiver, long amount) {
		try {
			pstmt5.setString(1, sender);
			pstmt5.setString(2, receiver);
			pstmt5.setLong(3, amount);
			int i = pstmt5.executeUpdate();
			if(i>0) return true;
			else return false;
		}catch(SQLException se) {
			return false;
		}
	}

	@Override
	public void showResult(String sender, String receiver) {
		ResultSet rs = null;
		try {
			pstmt6.setString(1, sender);
			pstmt6.setString(2, receiver);
			rs = pstmt6.executeQuery();
			System.out.println("EMAIL \t NAME \t BALANCE \t UDATE \t CDATE");
			while(rs.next()) {
				String email = rs.getString(1);
				String name = rs.getString(2);
				long balance = rs.getLong(3);
				Date udate = rs.getDate(4);
				Date cdate = rs.getDate(5);
				System.out.println(email+"\t"+name+"\t"+balance+"\t"+udate+"\t"+cdate);
			}
		}catch(SQLException se) {
		}finally {
			try {
				rs.close();
			}catch(SQLException se) {}
		}
	}

	@Override
	public void closeAll() {
		try {
			if(pstmt6 != null) pstmt6.close();
			if(pstmt5 != null) pstmt5.close();
			if(pstmt4 != null) pstmt4.close();
			if(pstmt3 != null) pstmt3.close();
			if(pstmt2 != null) pstmt2.close();
			if(pstmt1 != null) pstmt1.close();
			if(con != null) con.close();
		}catch(SQLException se) {}
	}

	@Override
	public boolean transfer(String sender, String receiver, long amount) throws SQLException {
		boolean flag1 = isMemeber(sender);
		boolean flag2 = isMemeber(receiver);
		if(flag1 & flag2) {
			System.out.println("(1) 2명 모두 계좌주 확인됨");
			if(checkBalance(sender, amount)) {
				System.out.println("(2) sender의 잔액이 충분함");
				if(minus(sender, amount)) {
					System.out.println("(3) 보내는 사람의 잔액을 - 성공");
					if(plus(receiver, amount)) {
						System.out.println("(4) 받는 사람의 잔액을 + 성공");
						if(log(sender, receiver, amount)) {
							System.out.println("(5) 이체 기록 성공");
							con.commit();
							return true;
						}else {
							System.out.println("(5) 이체 기록 실패");
							con.rollback();
							return false;
						}
					}else {
						System.out.println("(4) 받는 사람의 잔액을 + 실패");
						con.rollback();
						return false;
					}
				}else {
					System.out.println("(3) 보내는 사람의 잔액을 - 실패");
					con.rollback();
					return false;
				}
			}else {
				System.out.println("(2) sender의 잔액이 부족함");
				return false;
			}
		}else {
			System.out.println("(1) 2명중 적어도 1명이상은 계좌주가 아님");
			return false;
		}
	}
}
