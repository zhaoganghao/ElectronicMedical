package cn.emedical.action;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ClientAction extends ActionSupport {
	
public String menu(){
		
		return "menu";
	}
	
	public String main(){
		
		return "main";
	}
	
	public String head(){
		
		return "head";
	}
	

	public String index(){
		
		return "index";
	}
	
	
}
