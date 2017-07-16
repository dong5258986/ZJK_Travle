
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Specialty {
	@Id
	@GeneratedValue
	public int s_id;
	public int st_id;//类型id
	public String s_name;
	public String s_info;
	public String s_bussiness;//商家
	public String s_price;
	public int s_sales;//销量
	public String s_image;

	
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public int getS_sales() {
		return s_sales;
	}
	public void setS_sales(int s_sales) {
		this.s_sales = s_sales;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_info() {
		return s_info;
	}
	public void setS_info(String s_info) {
		this.s_info = s_info;
	}
	public String getS_bussiness() {
		return s_bussiness;
	}
	public void setS_bussiness(String s_bussiness) {
		this.s_bussiness = s_bussiness;
	}
	public String getS_price() {
		return s_price;
	}
	public void setS_price(String s_price) {
		this.s_price = s_price;
	}
	
}
