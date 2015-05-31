package cn.emedical.web.action;


import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import cn.emedical.base.BaseAction;
import cn.emedical.bean.User;

@Controller
@Scope("prototype")
public class LoginAction extends BaseAction {
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String index(){
		
		return "index";
	}
   public String login(){
		User loginUser = userService.login(user.getUsername(), user.getPassword());
		if(loginUser!=null){			
			ActionContext.getContext().getSession().put("user",loginUser);
			return "success";
		}else{
			addFieldError("errorInfo","用户名或密码错误");
			return "index";
		}
	}
   public String detial(){
	  user =  (User) ActionContext.getContext().getSession().get("user");
	  
	  return "detail";
   }
   public String logout(){
		  ActionContext.getContext().getSession().remove("user");
		  return "shouye";
	   }
}
