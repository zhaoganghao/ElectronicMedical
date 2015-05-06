package cn.emedical.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.User;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User> {
	
	public String add(){
		userService.save(this.getModel());
		return "tolist";
	}
	public String addUI(){
		return "addUI";
	}
	
	public String delete(){
		userService.delete(this.getModel().getId());
		return "tolist";
	}
	public String editUI(){
		return "saveUI";
	}
	public String edit(){
		return "tolist";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		PageView<User> pageView = new PageView<User>(2, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		orderby.put("regtime", "desc");
		pageView.setQueryResult(userService.getScrollData(pageView.getFirstResult(), 
				pageView.getMaxresult(), jpql.toString(), params.toArray(), orderby));
		ActionContext.getContext().put("pageView", pageView);
		System.out.print(pageView);
		return "list";
	}
	
	public String initPwd(){
		return "tolist";
	}
	
	public String login(){
		return "login";
	}
	
	public String logout(){
		ActionContext.getContext().getSession().remove("user");
		return "loginUI";
	}

	
	
	

}
