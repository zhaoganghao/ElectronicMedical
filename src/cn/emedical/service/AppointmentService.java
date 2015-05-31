package cn.emedical.service;

import java.util.List;

import cn.emedical.bean.Appointment;
import cn.emedical.service.base.DAO;

public interface AppointmentService extends DAO<Appointment> {

	public List<Appointment> getByDoctorId(int doctorId);
	List<Appointment> getByPatientId(int patientId);

}
