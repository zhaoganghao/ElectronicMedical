package cn.emedical.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.User;
import cn.emedical.service.base.DAO;

public interface UserService extends DAO<User> {

}
