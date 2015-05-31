package junit.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.emedical.bean.Identity;
import cn.emedical.bean.User;
import cn.emedical.service.UserService;


public class ServiceTest {

	@Test
	public void test() {
		ApplicationContext c=new ClassPathXmlApplicationContext("beans.xml");
		UserService s=(UserService) c.getBean("userServiceImpl");
		User user = new User("zhaogang3", "1123");
		user.setIdentity(new Identity("123","23","345"));
		s.save(user);
		
	}
	@Test
	public void test2() {
		ApplicationContext c=new ClassPathXmlApplicationContext("beans.xml");
		UserService s=(UserService) c.getBean("userServiceImpl");
		s.login("admin", "dssd");
	}
	@Test
	public void test3() {
	}

}
