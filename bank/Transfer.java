package day09.bank;

import java.sql.SQLException;

public interface Transfer {
	boolean isMemeber(String email); //S
	boolean checkBalance(String sender, long amount); //S
	boolean minus(String sender, long amount); //U
	boolean plus(String receiver, long amount); //U
	boolean log(String sender, String receiver, long amount); //I
	void showResult(String sender, String receiver); //S
	void closeAll();
	
	boolean transfer(String sender, String receiver, long amount) throws SQLException; // for User
}

//1. 계좌주의 이메일이 맞는지 체킹 
//2. 보내는 사람의 잔액이 이체금액보다 많은지 체킹 
//3. 보내는 사람의 잔액을 - 
//4. 받는 사람의 잔액을 + 
//5. 이체 기록 
//6. 계좌 내용을 보여줌 
//7. 연결객체를 닫기 

//8. 이체하기 메소드 for User  