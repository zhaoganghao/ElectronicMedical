package junit.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.emedical.bean.User;
import cn.emedical.service.UserService;


public class ServiceTest {

	@Test
	public void test() {
		ApplicationContext c=new ClassPathXmlApplicationContext("beans.xml");
		UserService s=(UserService) c.getBean("userServiceImpl");
		User user = new User("zhaogang", "1123");
		s.save(user);
	}
	@Test
	public void test2() {
	}

}
