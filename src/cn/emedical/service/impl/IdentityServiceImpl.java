package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Identity;
import cn.emedical.service.IdentityService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class IdentityServiceImpl extends DaoSupport<Identity> implements IdentityService {

}
