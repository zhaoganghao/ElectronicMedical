package cn.emedical.base;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.service.IdentityService;
import cn.emedical.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class BaseAction extends ActionSupport{
	/** 获取当前页 **/
	private int page;
	/** 设置是否进行查找 **/
	private String query;
	@Resource
	protected UserService userService;
	@Resource
	protected IdentityService identityService;
	public int getPage() {
		return page<1? 1 : page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}
	
}
