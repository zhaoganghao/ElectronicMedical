package cn.emedical.admin.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.Medicine;
import cn.emedical.service.MedicineService;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class MedicineAction extends BaseAction {
	@Resource
	private MedicineService medicineService;
	private Medicine medicine;
	
	public Medicine getMedicine() {
		return medicine;
	}
	public void setMedicine(Medicine medicine) {
		this.medicine = medicine;
	}
	public String delete(){
		
		medicineService.delete(this.medicine.getId());
		return "tolist";
	}
	public String editUI(){
		medicine = medicineService.find(this.medicine.getId());
		return "editUI";
	}
	public String edit(){
		Medicine copy = medicineService.find(this.medicine.getId());
		copy.setDescription(this.medicine.getDescription());
		copy.setName(this.medicine.getName());
		copy.setPrice(this.medicine.getPrice());
		copy.setUse_method(this.medicine.getUse_method());
		medicineService.update(copy);
		return "toeditUI";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		PageView<Medicine> pageView = new PageView<Medicine>(10, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		
		if ("true".equals(this.getQuery())) {
			if (medicine.getName() != null && !"".equals(medicine.getName().trim())) {
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.name like ?" + (params.size() + 1));
				params.add("%" + medicine.getName() + "%");
			}
		}	
		pageView.setQueryResult(medicineService.getScrollData(pageView.getFirstResult(), 
				pageView.getMaxresult(), jpql.toString(), params.toArray()));
		ActionContext.getContext().put("pageView", pageView);
		return "list";
	}
	public String add(){
		medicineService.save(medicine);
		return "tolist";
	}
	public String addUI(){
		return "addUI";
	}
	
}
