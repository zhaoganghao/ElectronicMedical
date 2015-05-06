package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.User;
import cn.emedical.service.UserService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class UserServiceImpl extends DaoSupport<User> implements UserService {

}
