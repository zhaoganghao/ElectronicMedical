package cn.emedical.bean;

public enum Gender {
	MAN(1,"ÄÐ"),WOMEN(0,"Å®");
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

	private Gender(int index, String name) {
	this.index = index;
	this.name = name;
	}
}
