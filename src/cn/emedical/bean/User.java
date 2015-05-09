package cn.emedical.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class User implements Serializable{
	private static final long serialVersionUID = -3877645730734457344L;
	@Id@GeneratedValue
	private Integer id;
	/** 用户名 **/
	@Column(unique=true,length=32,nullable=false)
	private String username;//只允许字母/数字/下划线
	/** 密码 **/
	@Column(length=32,nullable=false)
	private String password;//采用MD5加密
	/** 电子邮箱 **/
	@Column(length=30)
	private String email;
	/** 电话 **/
	@Column(length=15)
	private String phone;
	/** 注册时间 **/
	@Temporal(TemporalType.DATE)
	private Date ctime = new Date();
	private String role = "newuser";
	@OneToOne(cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	@JoinColumn(name="identity_id")
	private Identity identity;
	private String check_remark;
	private String avatar;
	public User(){
	}
	public User(String username, String password){
		this.username = username;
		this.password = password;
	}
	public User(String username, String password, String email, String phone
			) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}
	public Integer getId() {
		return id;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	
	public String getCheck_remark() {
		return check_remark;
	}
	public void setCheck_remark(String check_remark) {
		this.check_remark = check_remark;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	public Identity getIdentity() {
		return identity;
	}
	public void setIdentity(Identity identity) {
		this.identity = identity;
	}
	
}
