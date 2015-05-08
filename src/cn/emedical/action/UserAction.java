package cn.emedical.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.Identity;
import cn.emedical.bean.User;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class UserAction extends BaseAction {
	private User user;
	private Identity identity;
	private String check;
	
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public Identity getIdentity() {
		return identity;
	}
	public void setIdentity(Identity identity) {
		this.identity = identity;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String add(){
		userService.save(user);
		return "tolist";
	}
	public String addUI(){
		return "addUI";
	}
	
	public String delete(){
		userService.delete(user.getId());
		return "tolist";
	}
	public String editUI(){
		user = userService.find(this.user.getId());
		return "editUI";
	}
	public String edit(){
		User copy = userService.find(this.user.getId());
		if(user.getUsername() != null && !"".equals(user.getUsername().trim())){
			copy.setUsername(user.getUsername());
		}
		copy.setPhone(user.getPhone());
		copy.setEmail(user.getEmail());
		copy.setRole(user.getRole());
		copy.setIdentity(identity);
		userService.update(copy);
		return "toeditUI";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		PageView<User> pageView = new PageView<User>(2, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		orderby.put("ctime", "desc");
		if(this.check !=null && this.check.equals("true")){
			jpql.append("o.role = ?");
			params.add("pending");
		}
		if ("true".equals(this.getQuery())) {
			if (user.getUsername() != null && !"".equals(user.getUsername().trim())) {
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.username like ?" + (params.size() + 1));
				params.add("%" + user.getUsername() + "%");
			}
			if(user.getPhone() !=null && !"".equals(user.getPhone().trim())){
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.phone = ?" + (params.size() + 1));
				params.add(user.getPhone().trim());
			}
			if( this.check ==null && user.getRole() !=null && !"".equals(user.getRole().trim())){
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.role = ?" + (params.size() + 1));
				params.add(user.getRole());
			}
		}
		pageView.setQueryResult(userService.getScrollData(pageView.getFirstResult(), 
				pageView.getMaxresult(), jpql.toString(), params.toArray(), orderby));
		ActionContext.getContext().put("pageView", pageView);
		return "list";
	}
	public String login(){
		return "login";
	}
	
	public String logout(){
		ActionContext.getContext().getSession().remove("user");
		return "loginUI";
	}
	

}
