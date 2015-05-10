package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Reviews;
import cn.emedical.service.ReviewsService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class ReviewsServiceImpl extends DaoSupport<Reviews> implements  ReviewsService {

}
