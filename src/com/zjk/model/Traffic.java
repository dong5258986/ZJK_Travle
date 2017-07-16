/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年6月5日下午7:28:42
 */
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年6月5日下午7:28:42
 */
@Entity
public class Traffic {
	@Id
	@GeneratedValue
	private int tr_id;
	private String tr_name;
	private  String tr_info;
	private String tr_phone;
	private String tr_address;
	
	public int getTr_id() {
		return tr_id;
	}
	public void setTr_id(int tr_id) {
		this.tr_id = tr_id;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public String getTr_info() {
		return tr_info;
	}
	public void setTr_info(String tr_info) {
		this.tr_info = tr_info;
	}
	public String getTr_phone() {
		return tr_phone;
	}
	public void setTr_phone(String tr_phone) {
		this.tr_phone = tr_phone;
	}
	public String getTr_address() {
		return tr_address;
	}
	public void setTr_address(String tr_address) {
		this.tr_address = tr_address;
	}
	

}
