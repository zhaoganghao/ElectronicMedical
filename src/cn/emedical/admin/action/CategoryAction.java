package cn.emedical.admin.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.Category;
import cn.emedical.bean.User;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class CategoryAction extends BaseAction {
	private Category category;
	private Integer pid;
	
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String delete(){
		categoryService.delete(this.category.getId());
		return "tolist";
	}
	public String editUI(){
		return "editUI";
	}
	public String edit(){
		return "toeditUI";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		if(pid == null){
			jpql.append("o.parent.id is null");
		}else{
			jpql.append("o.parent.id = ?");
			params.add(pid);
		}
		PageView<Category> pageView = new PageView<Category>(2, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		pageView.setQueryResult(categoryService.getScrollData(pageView.getFirstResult(), 
				pageView.getMaxresult(), jpql.toString(), params.toArray()));
		ActionContext.getContext().put("pageView", pageView);
		return "list";
	}
	public String add(){
		categoryService.save(category);
		return "tolist";
	}
	public String addUI(){
		return "addUI";
	}
	
}
