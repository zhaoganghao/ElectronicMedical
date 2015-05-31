package cn.emedical.service;

import java.util.List;

import cn.emedical.bean.User;
import cn.emedical.service.base.DAO;

public interface UserService extends DAO<User> {

	public User login(String loginName, String password);

	public List<User> getDoctors();

}
