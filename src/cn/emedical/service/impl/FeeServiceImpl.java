package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Fee;
import cn.emedical.service.FeeService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class FeeServiceImpl extends DaoSupport<Fee> implements FeeService {

}
