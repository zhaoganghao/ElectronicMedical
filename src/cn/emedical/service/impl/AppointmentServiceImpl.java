package cn.emedical.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Appointment;
import cn.emedical.service.AppointmentService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class AppointmentServiceImpl extends DaoSupport<Appointment> implements AppointmentService {

	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<Appointment> getByDoctorId(int doctorId) {
		// TODO Auto-generated method stub
		List<Appointment> appointments = this.em.createQuery("select o from Appointment o where o.doctor.id = ? ").setParameter(1, doctorId).getResultList();
	
		return appointments;
	}
	@Override
	@Transactional(readOnly=true,propagation=Propagation.NOT_SUPPORTED)
	public List<Appointment> getByPatientId(int patientId) {
		// TODO Auto-generated method stub
		List<Appointment> appointments = this.em.createQuery("select o from Appointment o where o.patient.id = ? ").setParameter(1, patientId).getResultList();
		return appointments;
	}
}
