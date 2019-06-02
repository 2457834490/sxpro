package com.zr.model;

public class User {
	 int id;
	 String xm;
	 String zh;
	 String mm;
	 int zt;
	 String rq;
	public User(int id, String xm, String zh, String mm, int zt, String rq) {
		super();
		this.id = id;
		this.xm = xm;
		this.zh = zh;
		this.mm = mm;
		this.zt = zt;
		this.rq = rq;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXm() {
		return xm;
	}
	public void setXm(String xm) {
		this.xm = xm;
	}
	public String getZh() {
		return zh;
	}
	public void setZh(String zh) {
		this.zh = zh;
	}
	public String getMm() {
		return mm;
	}
	public void setMm(String mm) {
		this.mm = mm;
	}
	public int getZt() {
		return zt;
	}
	public void setZt(int  zt) {
		this.zt = zt;
	}
	public String getRq() {
		return rq;
	}
	public void setRq(String rq) {
		this.rq = rq;
	}

}
