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
public class Identity implements Serializable{
	private static final long serialVersionUID = -3877645730734457344L;
	@Id@GeneratedValue
	private Integer id;
	private String address;
	private String gender;
	@Column(length=64)
	private String doctor_licence_image;
	@Column(length=64)
	private String ic_image;
	@Temporal(TemporalType.DATE)
	private Date license_pass_date;
	@Temporal(TemporalType.DATE)
	private Date license_expired_date;
	@Column(length=10)
	private String name;
	@Column(length=18)
	private String NRIC_FIN;
	@OneToOne(mappedBy="identity",cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	private User user;
	public Identity(){
	}
	
	public Identity(String address, String gender, String name) {
		super();
		this.address = address;
		this.gender = gender;
		this.name = name;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getDoctor_licence_image() {
		return doctor_licence_image;
	}

	public void setDoctor_licence_image(String doctor_licence_image) {
		this.doctor_licence_image = doctor_licence_image;
	}

	public String getIc_image() {
		return ic_image;
	}
	public void setIc_image(String ic_image) {
		this.ic_image = ic_image;
	}
	public Date getLicense_pass_date() {
		return license_pass_date;
	}
	public void setLicense_pass_date(Date license_pass_date) {
		this.license_pass_date = license_pass_date;
	}
	public Date getLicense_expired_date() {
		return license_expired_date;
	}
	public void setLicense_expired_date(Date license_expired_date) {
		this.license_expired_date = license_expired_date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNRIC_FIN() {
		return NRIC_FIN;
	}
	public void setNRIC_FIN(String nRIC_FIN) {
		NRIC_FIN = nRIC_FIN;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
		Identity other = (Identity) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
}
