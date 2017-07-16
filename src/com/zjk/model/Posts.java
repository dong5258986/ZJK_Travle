package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
*包名：com.zjk.model
 *功能：TODO 
*作者：董壮
*日期：2017年5月18日下午9:49:42
 */
@Entity
public class Posts {
	@Id
	@GeneratedValue
	private int p_id;
	private String p_title;
	private String p_info;
	private int p_views;
	private int p_zan;
	private String p_publishtime;
	private String p_image;
	

	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_info() {
		return p_info;
	}
	public void setP_info(String p_info) {
		this.p_info = p_info;
	}

	public int getP_views() {
		return p_views;
	}
	public void setP_views(int p_views) {
		this.p_views = p_views;
	}
	public int getP_zan() {
		return p_zan;
	}
	public void setP_zan(int p_zan) {
		this.p_zan = p_zan;
	}
	public String getP_publishtime() {
		return p_publishtime;
	}
	public void setP_publishtime(String p_publishtime) {
		this.p_publishtime = p_publishtime;
	}
	
	
}
