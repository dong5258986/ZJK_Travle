package com.zjk.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年5月16日下午9:22:51
 */
@Entity
public class Attractions {
	
	@Id
	@GeneratedValue
	private int a_id;
	private String a_name;
	private String a_info;//详细介绍
	private String a_address;
	private String a_picture;
	private int a_ticket;
	private String a_phone;
	private String a_infotitle;
	private String a_simpleinfo;//简介
	private String a_publishtime;
	
	public String getA_infotitle() {
		return a_infotitle;
	}
	public void setA_infotitle(String a_infotitle) {
		this.a_infotitle = a_infotitle;
	}
	public String getA_simpleinfo() {
		return a_simpleinfo;
	}
	public void setA_simpleinfo(String a_simpleinfo) {
		this.a_simpleinfo = a_simpleinfo;
	}
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
		this.a_id = a_id;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getA_info() {
		return a_info;
	}
	public void setA_info(String a_info) {
		this.a_info = a_info;
	}
	public String getA_address() {
		return a_address;
	}
	public void setA_address(String a_address) {
		this.a_address = a_address;
	}
	public String getA_picture() {
		return a_picture;
	}
	public void setA_picture(String a_picture) {
		this.a_picture = a_picture;
	}
	public int getA_ticket() {
		return a_ticket;
	}
	public void setA_ticket(int a_ticket) {
		this.a_ticket = a_ticket;
	}
	public String getA_phone() {
		return a_phone;
	}
	public void setA_phone(String a_phone) {
		this.a_phone = a_phone;
	}
	public String getA_publishtime() {
		return a_publishtime;
	}
	public void setA_publishtime(String a_publishtime) {
		this.a_publishtime = a_publishtime;
	}

}
