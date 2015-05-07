package cn.emedical.bean;

public enum Role {
	newuser(0,"newuser"),pending(0,"pending"),rejected(0,"rejected"),docter(0,"docter"),patient(0,"patient"),admin(0,"admin");
	private int index;
	private String name;
	public int getIndex() {
	return index;
	}
	public void setIndex(int index) {
	this.index = index;
	}
	public String getName() {
	return name;
	}
	public void setName(String name) {
	this.name = name;
	}

	private Role(int index, String name) {
	this.index = index;
	this.name = name;
	}
}
