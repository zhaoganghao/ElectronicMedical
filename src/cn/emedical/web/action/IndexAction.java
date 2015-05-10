package cn.emedical.web.action;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;

@Controller
@Scope("prototype")
public class IndexAction extends BaseAction {
	
	public String index(){
		
		return "index";
	}
}
