package cn.emedical.admin.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.MedicalRecord;
import cn.emedical.bean.Medicine;
import cn.emedical.service.MedicalRecordService;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class MedicalRecordAction extends BaseAction {
	@Resource
	private MedicalRecordService medicalRecordService;
	private MedicalRecord medicalRecord;
	
	public MedicalRecord getMedicalRecord() {
		return medicalRecord;
	}
	public void setMedicalRecord(MedicalRecord medicalRecord) {
		this.medicalRecord = medicalRecord;
	}
	public String delete(){
		
		medicalRecordService.delete(this.medicalRecord.getId());
		return "tolist";
	}
	public String editUI(){
		medicalRecord = medicalRecordService.find(this.medicalRecord.getId());
		return "editUI";
	}
	public String edit(){
		MedicalRecord copy = medicalRecordService.find(this.medicalRecord.getId());
		copy.setContent(this.medicalRecord.getContent());
		copy.setResult(this.medicalRecord.getResult());
		medicalRecordService.update(copy);
		return "toeditUI";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		PageView<MedicalRecord> pageView = new PageView<MedicalRecord>(2, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		
		if ("true".equals(this.getQuery())) {
			/*if (medicine.getName() != null && !"".equals(medicine.getName().trim())) {
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.name like ?" + (params.size() + 1));
				params.add("%" + medicine.getName() + "%");
			}*/
		}	
		pageView.setQueryResult(medicalRecordService.getScrollData(pageView.getFirstResult(), 
				pageView.getMaxresult(), jpql.toString(), params.toArray()));
		ActionContext.getContext().put("pageView", pageView);
		return "list";
	}
	public String add(){
		medicalRecordService.save(this.medicalRecord);
		return "tolist";
	}
	public String addUI(){
		return "addUI";
	}
	
}
