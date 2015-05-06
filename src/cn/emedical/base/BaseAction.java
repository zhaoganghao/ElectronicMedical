package cn.emedical.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.bean.User;
import cn.emedical.service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	/** 获取当前页 **/
	private int page;
	/** 设置是否进行查找 **/
	private String query;
	
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

	protected T model;
	@Resource
	protected UserService userService;
	public T getModel() {		
		return model;
	}
	
	public User getUser(){
		return (User)ActionContext.getContext().getSession().get("user");
	}
	
	protected BaseAction(){
		try {
			ParameterizedType pt=(ParameterizedType)this.getClass().getGenericSuperclass();
			Class<T> clazz=(Class<T>)pt.getActualTypeArguments()[0];
			model=clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
}
