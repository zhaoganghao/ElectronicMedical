package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.MedicalRecord;
import cn.emedical.service.MedicalRecordService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class MedicalRecordServiceImpl extends DaoSupport<MedicalRecord> implements MedicalRecordService {

}
