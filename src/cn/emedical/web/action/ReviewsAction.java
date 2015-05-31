package cn.emedical.web.action;


import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.bean.Reviews;
import cn.emedical.bean.User;
import cn.emedical.service.ReviewsService;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class ReviewsAction extends BaseAction {
	private Integer doctorId;
	private Reviews reviews;
	@Resource
	private ReviewsService reviewsService;
	public Integer getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(Integer doctorId) {
		this.doctorId = doctorId;
	}
	public String list(){
		return "list";
	}
	
	public Reviews getReviews() {
		return reviews;
	}
	public void setReviews(Reviews reviews) {
		this.reviews = reviews;
	}
	public String addUI(){
		User doctor = userService.find(this.doctorId);
		ActionContext.getContext().put("doctor", doctor);
		return "addUI";
	}
	public String add(){
		User loginUser = (User) ActionContext.getContext().getSession().get("user");
		User doctor = userService.find(this.doctorId);
		this.reviews.setDoctor(doctor);
		this.reviews.setPatient(userService.find(loginUser.getId()));
		this.reviewsService.update(reviews);
		return "success";
	}
}
