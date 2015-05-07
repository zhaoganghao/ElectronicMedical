package cn.emedical.action;


import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.base.bean.PageView;
import cn.emedical.bean.Gender;
import cn.emedical.bean.Identity;
import cn.emedical.bean.Role;
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
		User user = userService.find(this.getModel().getId());
		ActionContext.getContext().getValueStack().push(user);
		ActionContext.getContext().put("genders", Gender.values());
		ActionContext.getContext().put("roles", Role.values());
		return "editUI";
	}
	public String edit(){
		User user = userService.find(this.getModel().getId());
		User copy = this.getModel();
		if(copy.getUsername() != null && !"".equals(copy.getUsername().trim())){
			user.setUsername(copy.getUsername());
		}
		user.setPhone(copy.getPhone());
		user.setEmail(copy.getEmail());
		user.setRole(copy.getRole());
		Identity identity = user.getIdentity();
		if(identity == null){
			identity = new Identity();
			user.setIdentity(identity);
		}
		user.getIdentity().setAddress(copy.getIdentity().getAddress());
		user.getIdentity().setName(copy.getIdentity().getName());
		user.getIdentity().setLicense_pass_date(copy.getIdentity().getLicense_pass_date());
		user.getIdentity().setLicense_expired_date(copy.getIdentity().getLicense_expired_date());
		userService.update(user);
		return "toeditUI";
	}
	public String list(){
		StringBuffer jpql = new StringBuffer();
		List<Object> params = new ArrayList<Object>();
		User user = this.getModel();
		PageView<User> pageView = new PageView<User>(2, this.getPage());
		LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
		orderby.put("ctime", "desc");
		if ("true".equals(this.getQuery())) {
			if (user.getUsername() != null && !"".equals(user.getUsername().trim())) {
				if (params.size() > 0) jpql.append(" and ");
				jpql.append(" o.username like ?" + (params.size() + 1));
				params.add("%" + user.getUsername() + "%");
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
