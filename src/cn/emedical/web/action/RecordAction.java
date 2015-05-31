package cn.emedical.web.action;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.QueryResult;
import cn.emedical.bean.MedicalRecord;
import cn.emedical.bean.User;
import cn.emedical.service.MedicalRecordService;

@Controller
@Scope("prototype")
public class RecordAction extends BaseAction {
	@Resource
	private MedicalRecordService medicalRecordService;
	public String list(){
		User entity = (User) ActionContext.getContext().getSession().get("user");
		List<MedicalRecord> records = null;
		if (entity.getRole().equals("patient")) {
			records = medicalRecordService.getALLByPatientId(entity.getId());
		}
		if (entity.getRole().equals("doctor")) {
			records = medicalRecordService.getALLByDoctorId(entity.getId());
		}
		ActionContext.getContext().put("records", records);
		return "list";
	}

}
