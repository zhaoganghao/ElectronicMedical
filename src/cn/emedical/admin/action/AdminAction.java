package cn.emedical.admin.action;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;

@Controller
@Scope("prototype")
public class AdminAction extends BaseAction {
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return "index";
	}
	
}
