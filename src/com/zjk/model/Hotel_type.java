/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年6月4日下午8:33:47
 */
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年6月4日下午8:33:47
 */
@Entity
public class Hotel_type {
	@Id
	@GeneratedValue
	private int hty_id;
	private String hty_name;
	public int getHty_id() {
		return hty_id;
	}
	public void setHty_id(int hty_id) {
		this.hty_id = hty_id;
	}
	public String getHty_name() {
		return hty_name;
	}
	public void setHty_name(String hty_name) {
		this.hty_name = hty_name;
	}
	

}
