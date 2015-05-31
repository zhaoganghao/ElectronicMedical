package cn.emedical.service;

import java.util.List;

import cn.emedical.bean.Category;
import cn.emedical.service.base.DAO;

public interface CategoryService extends DAO<Category> {
	public List<Category> getAll();
}
