package cn.emedical.web.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.QueryResult;
import cn.emedical.bean.Appointment;
import cn.emedical.bean.MedicalRecord;
import cn.emedical.bean.Medicine;
import cn.emedical.bean.User;
import cn.emedical.service.AppointmentService;
import cn.emedical.service.MedicalRecordService;
import cn.emedical.service.MedicineService;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class ProcessAction extends BaseAction {
	private User user;
	private Appointment appointment;
	private Integer doctorid;
	private MedicalRecord medicalRecord;
	@Resource
	private AppointmentService appointService;
	@Resource
	private MedicalRecordService medicalRecordService;
	@Resource
	private MedicineService medicineService;

	public Appointment getAppointment() {
		return appointment;
	}

	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}

	public MedicalRecord getMedicalRecord() {
		return medicalRecord;
	}

	public void setMedicalRecord(MedicalRecord medicalRecord) {
		this.medicalRecord = medicalRecord;
	}

	public Integer getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(Integer doctorid) {
		this.doctorid = doctorid;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String index() {

		return "index";
	}

	public String appointList() {
		User entity = (User) ActionContext.getContext().getSession()
				.get("user");
		List<Appointment> appointments = null;
		if (entity.getRole().equals("patient")) {
			appointments = appointService.getByPatientId(entity.getId());
		}
		if (entity.getRole().equals("doctor")) {
			appointments = appointService.getByDoctorId(entity.getId());
		}
		ActionContext.getContext().put("appointments", appointments);
		return "appoint_list";
	}

	// 预约
	public String appointUI() {
		User doctor = userService.find(this.doctorid);
		ActionContext.getContext().put("doctor", doctor);
		return "appointUI";
	}

	// 预约
	public String appoint() {
		User patient = (User) ActionContext.getContext().getSession()
				.get("user");
		User doctor = userService.find(this.doctorid);
		appointment.setDoctor(doctor);
		appointment.setPatient(patient);
		appointService.update(appointment);
		ActionContext.getContext().put("appointment", appointment);
		return "wait";
	}

	// 挂号
	public String registration() {
		User loginUser = userService.login(user.getUsername(),
				user.getPassword());
		if (loginUser != null) {
			ActionContext.getContext().getSession().put("user", loginUser);
			return "success";
		} else {
			addFieldError("errorInfo", "用户名或密码错误");
			return "index";
		}
	}

	// 缴费
	public String pay() {
		Appointment copy = appointService.find(this.appointment.getId());
		copy.setIs_fee(1);
		appointService.update(copy);
		return "pay";
	}

	// 候诊
	public String waiting() {
		User loginUser = userService.login(user.getUsername(),
				user.getPassword());
		if (loginUser != null) {
			ActionContext.getContext().getSession().put("user", loginUser);
			return "success";
		} else {
			addFieldError("errorInfo", "用户名或密码错误");
			return "index";
		}
	}

	// 就诊
	public String treatUI() {
		appointment = appointService.find(this.appointment.getId());
		return "treatUI";
	}

	// 就诊
	public String treatFirst() {
		appointment = appointService.find(this.appointment.getId());
		this.medicalRecord.setAppointment(appointment);
		medicalRecordService.update(medicalRecord);
		int is_check = this.medicalRecord.getIs_check();
		if(is_check == 1){
			return "wait_check";
		}else{
			QueryResult<Medicine> result = (QueryResult<Medicine>) medicineService.getScrollData();
			ActionContext.getContext().put("medicines", result.getResultlist());
			return "select_medicine";
		}
	}

	// 就诊
	public String edit() {
		Appointment copy = appointService.find(appointment.getId());
		copy.setStatus(appointment.getStatus());
		appointService.update(copy);
		return "edit";
	}
}
