
package com.zjk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Log {
	private int id;
	private String username;
	private String operatelog;
	private String time;
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOperatelog() {
		return operatelog;
	}
	public void setOperatelog(String operatelog) {
		this.operatelog = operatelog;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Log [id=" + id + ", username=" + username + ", operatelog="
				+ operatelog + ", time=" + time + "]";
	}
	
}
