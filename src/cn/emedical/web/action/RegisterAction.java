package cn.emedical.web.action;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import cn.emedical.base.BaseAction;
import cn.emedical.bean.Identity;
import cn.emedical.bean.User;

import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class RegisterAction extends BaseAction {
	private User user;
	private Identity identity;
    private File ic_image;
    private String ic_imageContentType;
    private String ic_imageFileName;
    private File doctor_licence_image;
    private String doctor_licence_imageType;
    private String doctor_licence_imageFileName;
    private File experience_image;
    private String experience_imageType;
    private String experience_imageFileName;
    private File academic_certificate_image;
    private String academic_certificate_imageType;
    private String academic_certificate_imageFileName;
    private File avatar;
    private String avatarFileName;
    private String avatarType;
	public File getIc_image() {
		return ic_image;
	}
	public void setIc_image(File ic_image) {
		this.ic_image = ic_image;
	}
	public String getIc_imageContentType() {
		return ic_imageContentType;
	}
	public void setIc_imageContentType(String ic_imageContentType) {
		this.ic_imageContentType = ic_imageContentType;
	}
	public String getIc_imageFileName() {
		return ic_imageFileName;
	}
	public void setIc_imageFileName(String ic_imageFileName) {
		this.ic_imageFileName = ic_imageFileName;
	}
	public File getAvatar() {
		return avatar;
	}
	public void setAvatar(File avatar) {
		this.avatar = avatar;
	}
	public String getAvatarFileName() {
		return avatarFileName;
	}
	public void setAvatarFileName(String avatarFileName) {
		this.avatarFileName = avatarFileName;
	}
	public String getAvatarType() {
		return avatarType;
	}
	public void setAvatarType(String avatarType) {
		this.avatarType = avatarType;
	}
	public File getDoctor_licence_image() {
		return doctor_licence_image;
	}
	public void setDoctor_licence_image(File doctor_licence_image) {
		this.doctor_licence_image = doctor_licence_image;
	}
	public String getDoctor_licence_imageType() {
		return doctor_licence_imageType;
	}
	public void setDoctor_licence_imageType(String doctor_licence_imageType) {
		this.doctor_licence_imageType = doctor_licence_imageType;
	}
	public File getExperience_image() {
		return experience_image;
	}
	public void setExperience_image(File experience_image) {
		this.experience_image = experience_image;
	}
	public String getAcademic_certificate_imageFileName() {
		return academic_certificate_imageFileName;
	}
	public void setAcademic_certificate_imageFileName(
			String academic_certificate_imageFileName) {
		this.academic_certificate_imageFileName = academic_certificate_imageFileName;
	}
	public String getExperience_imageType() {
		return experience_imageType;
	}
	public void setExperience_imageType(String experience_imageType) {
		this.experience_imageType = experience_imageType;
	}
	
	public File getAcademic_certificate_image() {
		return academic_certificate_image;
	}
	public void setAcademic_certificate_image(File academic_certificate_image) {
		this.academic_certificate_image = academic_certificate_image;
	}
	public String getAcademic_certificate_imageType() {
		return academic_certificate_imageType;
	}
	public void setAcademic_certificate_imageType(
			String academic_certificate_imageType) {
		this.academic_certificate_imageType = academic_certificate_imageType;
	}
	
	public String getDoctor_licence_imageFileName() {
		return doctor_licence_imageFileName;
	}
	public void setDoctor_licence_imageFileName(String doctor_licence_imageFileName) {
		this.doctor_licence_imageFileName = doctor_licence_imageFileName;
	}
	public String getExperience_imageFileName() {
		return experience_imageFileName;
	}
	public void setExperience_imageFileName(String experience_imageFileName) {
		this.experience_imageFileName = experience_imageFileName;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Identity getIdentity() {
		return identity;
	}
	public void setIdentity(Identity identity) {
		this.identity = identity;
	}
	public String firstUI(){
		
		return "firstUI";
	}
	public String first() throws IOException{
		 String realpath = ServletActionContext.getServletContext().getRealPath("/upload/images");
			if(avatarFileName!=null && !"".equals(avatarFileName.trim())){
				String path = "/upload/images";
				String saveFilename = makeFileName(avatarFileName);  //得到文件保存的名称
				File savefile = new File(new File(realpath+"/avatar"), saveFilename);
				if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
				FileUtils.copyFile(avatar, savefile);
				path = path + "/avatar/"+saveFilename;
				user.setAvatar(path);
			}
			userService.save(user);
		return "secondUI";
	}
	public String second(){
		User copy = userService.find(this.user.getId());
		copy.setRole(user.getRole());
		userService.update(copy);
		return "threeUI";
	}
	public String three() throws IOException{
		String realpath = ServletActionContext.getServletContext().getRealPath("/upload/images");
		if(ic_imageFileName!=null && !"".equals(ic_imageFileName.trim())){
			String path = "/upload/images";
			String saveFilename = makeFileName(ic_imageFileName);  //得到文件保存的名称
			File savefile = new File(new File(realpath+"/ic"), saveFilename);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
			FileUtils.copyFile(ic_image, savefile);
			path = path + "/ic/"+saveFilename;
			this.identity.setIc_image(path);
		}
		if(doctor_licence_imageFileName!=null && !"".equals(doctor_licence_imageFileName.trim())){
			String path = "/upload/images";
			String saveFilename = makeFileName(doctor_licence_imageFileName);  //得到文件保存的名称
			File savefile = new File(new File(realpath+"/dc/li"), saveFilename);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
			FileUtils.copyFile(doctor_licence_image, savefile);
			path = path + "/dc/li/"+saveFilename;
			this.identity.setDoctor_licence_image(path);
		}
		if(experience_imageFileName!=null && !"".equals(experience_imageFileName.trim())){
			String path = "/upload/images";
			String saveFilename = makeFileName(experience_imageFileName);  //得到文件保存的名称
			File savefile = new File(new File(realpath+"/dc/ex"), saveFilename);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
			FileUtils.copyFile(experience_image, savefile);
			path = path + "/dc/ex/"+saveFilename;
			this.identity.setExperience_image(path);
		}
		if(academic_certificate_imageFileName!=null && !"".equals(academic_certificate_imageFileName.trim())){
			String path = "/upload/images";
			String saveFilename = makeFileName(academic_certificate_imageFileName);  //得到文件保存的名称
			File savefile = new File(new File(realpath+"/dc/ac"), saveFilename);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
			FileUtils.copyFile(academic_certificate_image, savefile);
			path = path + "/dc/ac/"+saveFilename;
			this.identity.setAcademic_certificate_image(path);
		}
		User copy = userService.find(this.user.getId());
		copy.setIdentity(identity);
		userService.update(copy);
		return "success";
	}
	public String makeFileName(String filename){  //2.jpg
		String[] names = filename.split("\\.");
		return UUID.randomUUID().toString() + "." + names[1];
	}
	public String makePath(String filename,String savePath){
		
		int hashcode = filename.hashCode();
		int dir1 = hashcode&0xf;  //0--15
		int dir2 = (hashcode&0xf0)>>4;  //0-15
		
		String dir = savePath + "\\" + dir1 + "\\" + dir2;  //upload\2\3  upload\3\5
		File file = new File(dir);
		if(!file.exists()){
			file.mkdirs();
		}
		return dir;
	}

}
