/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017-5-10上午10:33:40
 */
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *包名：com.zjk.model
 *功能：TODO 
 *作者：董壮
 *日期：2017-5-10上午10:33:40
 */
@Entity
public class SpecialtyType {
	@Id
	@GeneratedValue
	public int st_id;
	public String st_name;
	public int st_amount;
	
	public int getSt_amount() {
		return st_amount;
	}
	public void setSt_amount(int st_amount) {
		this.st_amount = st_amount;
	}
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	
}
