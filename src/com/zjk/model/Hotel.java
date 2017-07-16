package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Hotel {
	@Id
	@GeneratedValue
	private  int h_id;
	private String h_name;
	private String h_info;
	private int h_price;
	private String h_address;
	private int hty_id; 
	private int h_views;
	private int h_zan;
	private String h_ptime;//发布时间
	private String h_image;
	private String h_phone;
	
	public int getH_id() {
		return h_id;
	}
	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_info() {
		return h_info;
	}
	public void setH_info(String h_info) {
		this.h_info = h_info;
	}
	public int getH_price() {
		return h_price;
	}
	public void setH_price(int h_price) {
		this.h_price = h_price;
	}
	public String getH_address() {
		return h_address;
	}
	public void setH_address(String h_address) {
		this.h_address = h_address;
	}
	
	public int getHty_id() {
		return hty_id;
	}
	public void setHty_id(int hty_id) {
		this.hty_id = hty_id;
	}
	
	public int getH_views() {
		return h_views;
	}
	public void setH_views(int h_views) {
		this.h_views = h_views;
	}
	public int getH_zan() {
		return h_zan;
	}
	public void setH_zan(int h_zan) {
		this.h_zan = h_zan;
	}
	public String getH_ptime() {
		return h_ptime;
	}
	public void setH_ptime(String h_ptime) {
		this.h_ptime = h_ptime;
	}
	
	public String getH_image() {
		return h_image;
	}
	public void setH_image(String h_image) {
		this.h_image = h_image;
	}
	public String getH_phone() {
		return h_phone;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}
	
	
}
