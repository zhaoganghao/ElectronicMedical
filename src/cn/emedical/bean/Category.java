package cn.emedical.bean;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
@Entity
public class Category   implements Serializable {
	private static final long serialVersionUID = -3022716381987471576L;
	@Id
	@GeneratedValue
	private int id;
	@Column(length=20)
	private String name;
	@ManyToOne(cascade={CascadeType.REFRESH},fetch=FetchType.EAGER)
	@JoinColumn(name="pid")
	private Category parent;
	@OneToMany(mappedBy="parent",cascade={CascadeType.ALL},fetch=FetchType.EAGER)
	private Set<Category> children;
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	private Set<User> users;
	private String description;
	public Category() {
		super();
	}
	public Category(String name, Category parent) {
		super();
		this.name = name;
		this.parent = parent;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Category getParent() {
		return parent;
	}
	public void setParent(Category parent) {
		this.parent = parent;
	}
	public Set<Category> getChildren() {
		return children;
	}
	public void setChildren(Set<Category> children) {
		this.children = children;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
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
		Category other = (Category) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
}
