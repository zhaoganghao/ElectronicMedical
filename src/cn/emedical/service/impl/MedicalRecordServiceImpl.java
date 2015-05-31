package cn.emedical.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.MedicalRecord;
import cn.emedical.service.MedicalRecordService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class MedicalRecordServiceImpl extends DaoSupport<MedicalRecord> implements MedicalRecordService {

	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<MedicalRecord> getALLByDoctorId(int id) {
		// TODO Auto-generated method stub
		List<MedicalRecord> records = this.em.createQuery(" from MedicalRecord o where o.appointment.doctor.id =? ").setParameter(1, id).getResultList();
		return records;
	}

	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<MedicalRecord> getALLByPatientId(int id) {
		List<MedicalRecord> records = this.em.createQuery(" from MedicalRecord o where o.appointment.patient.id =? ").setParameter(1, id).getResultList();
		return records;
	}

}
