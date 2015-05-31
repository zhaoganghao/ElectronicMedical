package cn.emedical.service;

import java.util.List;

import cn.emedical.bean.MedicalRecord;
import cn.emedical.service.base.DAO;

public interface MedicalRecordService extends DAO<MedicalRecord> {
	public List<MedicalRecord> getALLByDoctorId(int id);
	public List<MedicalRecord> getALLByPatientId(int id);
}
