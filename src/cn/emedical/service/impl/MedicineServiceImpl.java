package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Medicine;
import cn.emedical.service.MedicineService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class MedicineServiceImpl extends DaoSupport<Medicine> implements MedicineService {

}
