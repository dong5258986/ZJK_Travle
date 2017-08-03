package com.zjk.pageModel;

import java.util.List;

@SuppressWarnings("serial")
public class SessionInfo implements java.io.Serializable {

	private Long id;// �û�ID
	private String loginname;// ��¼��
	private String name;// ����
	private String ip;// �û�IP

	private List<String> resourceList;// �û����Է��ʵ���Դ��ַ�б�
	
	private List<String> resourceAllList;

	public List<String> getResourceList() {
		return resourceList;
	}

	public void setResourceList(List<String> resourceList) {
		this.resourceList = resourceList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLoginname() {
		return loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	
	public List<String> getResourceAllList() {
		return resourceAllList;
	}

	public void setResourceAllList(List<String> resourceAllList) {
		this.resourceAllList = resourceAllList;
	}

	@Override
	public String toString() {
		return this.name;
	}

}
