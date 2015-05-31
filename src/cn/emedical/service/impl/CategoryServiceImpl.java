package cn.emedical.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Category;
import cn.emedical.service.CategoryService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class CategoryServiceImpl extends DaoSupport<Category> implements CategoryService {

	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		List<Category> categorys = this.em.createQuery("select o from Category o ").getResultList();
		return categorys;
	}

}
