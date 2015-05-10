package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Category;
import cn.emedical.service.CategoryService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class CategoryServiceImpl extends DaoSupport<Category> implements CategoryService {

}
