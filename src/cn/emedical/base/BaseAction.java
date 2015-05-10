package cn.emedical.base;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.service.CategoryService;
import cn.emedical.service.IdentityService;
import cn.emedical.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class BaseAction extends ActionSupport{
	/** ��ȡ��ǰҳ **/
	private int page;
	/** �����Ƿ���в��� **/
	private String query;
	@Resource
	protected UserService userService;
	@Resource
	protected IdentityService identityService;
	@Resource
	protected CategoryService categoryService;
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
