package cn.emedical.service.impl;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.User;
import cn.emedical.service.UserService;
import cn.emedical.service.base.DaoSupport;
import cn.emedical.utils.MD5;
@Service
@Transactional
public class UserServiceImpl extends DaoSupport<User> implements UserService {

	@Override
	public User login(String loginName, String password) {
		// TODO Auto-generated method stub
		if(loginName==null||loginName.trim().equals("")||password==null||password.trim().equals("")){
			return null;
		}else{
			password=MD5.MD5Encode(password);
			List<User> users=(List<User>)em.createQuery("select o from cn.emedical.bean.User o where o.username=? and o.password=?")
					.setParameter(1, loginName).setParameter(2, password).getResultList();
			if(users.size() > 0){
				return users.get(0);
			}
			return null;		
		}
	}

	@Override
	public void save(User entity) {
		// TODO Auto-generated method stub
		entity.setPassword(MD5.MD5Encode(entity.getPassword()));
		super.save(entity);
	}

	@Override
	@Transactional(readOnly = true, propagation = Propagation.NOT_SUPPORTED)
	public List<User> getDoctors() {
		// TODO Auto-generated method stub
		List<User> doctors = this.em.createQuery("from User o where o.role = 'doctor'  ").setFirstResult(0).setMaxResults(3).getResultList();
		return doctors;
	}
}
