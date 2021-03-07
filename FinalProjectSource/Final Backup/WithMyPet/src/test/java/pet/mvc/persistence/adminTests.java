package pet.mvc.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import pet.admin.service.AdminService;
import pet.message.service.MsgService;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;
import pet.mvc.mapper.AdminMapper;


@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class adminTests {
	@Setter(onMethod_ = {@Autowired})
	// 이렇게도 객체 주입을 한다. 
	private MsgService service;
	

	/*
	@Test
	public void testDelete() {
		long i = adminService.getTodayIncome();
	    log.info("@결과: " + i);
	}*/
	@Test
	public void testWeekly() {
		MsgListResult i = service.getAllMsgList(5);
		log.info("###이거입니당~~" + i.getChatList());
	}/*
	@Test
	public void check() {
		adminmapper.getNewMemList();
	}*/

}
