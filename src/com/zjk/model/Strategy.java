/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:27:00
 */
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:27:00
 */
@Entity
public class Strategy {
	@Id
	@GeneratedValue
	private int str_id;
	private String str_rectime;//建议游玩时间
	private String str_time;//攻略创建时间，修改时间
	private String str_info;
	private String str_title;
	private int str_views;//浏览量
	private int str_zan;//赞
	private String str_simpleinfo;
	private String str_image;
	
	public int getStr_id() {
		return str_id;
	}
	public void setStr_id(int str_id) {
		this.str_id = str_id;
	}
	public String getStr_rectime() {
		return str_rectime;
	}
	public void setStr_rectime(String str_rectime) {
		this.str_rectime = str_rectime;
	}
	public String getStr_time() {
		return str_time;
	}
	public void setStr_time(String str_time) {
		this.str_time = str_time;
	}
	public String getStr_info() {
		return str_info;
	}
	public void setStr_info(String str_info) {
		this.str_info = str_info;
	}
	public String getStr_title() {
		return str_title;
	}
	public void setStr_title(String str_title) {
		this.str_title = str_title;
	}
	public int getStr_views() {
		return str_views;
	}
	public void setStr_views(int str_views) {
		this.str_views = str_views;
	}
	public int getStr_zan() {
		return str_zan;
	}
	public void setStr_zan(int str_zan) {
		this.str_zan = str_zan;
	}
	public String getStr_simpleinfo() {
		return str_simpleinfo;
	}
	public void setStr_simpleinfo(String str_simpleinfo) {
		this.str_simpleinfo = str_simpleinfo;
	}
	public String getStr_image() {
		return str_image;
	}
	public void setStr_image(String str_image) {
		this.str_image = str_image;
	}
	
	

}
