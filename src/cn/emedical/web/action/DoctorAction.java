package cn.emedical.web.action;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import cn.emedical.base.BaseAction;
import cn.emedical.bean.Category;
import cn.emedical.bean.User;
import cn.emedical.service.CategoryService;

@Controller
@Scope("prototype")
public class DoctorAction extends BaseAction {
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String list(){
		List<Category> categorys = categoryService.getAll();
		ActionContext.getContext().put("categorys", categorys);
		List<User> doctors = userService.getDoctors();
		ActionContext.getContext().put("doctors", doctors);
		return "list";
	}
	public String detail(){
		user = userService.find(this.user.getId());
		return "detail";
	}
}
