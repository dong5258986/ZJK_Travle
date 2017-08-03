package com.zjk.pageModel;

/***
 * ����˵��:
 * @author IBird
 * @date 2016/6/3
 */
public class Page {

	//��ǰ�ڼ�ҳ
	private int pageNow;
	
	//ÿҳ��ʾ��������¼
	private int pageSize;
	
	//���ж�������¼
	private long totalItemNumber;

	//��ҪУ��һ��
	public int getPageNow() {
		if(pageNow < 0)
			pageNow = 1;
		
		if(pageNow > getTotalPageNumber()){
			pageNow = getTotalPageNumber();
		}
		
		return pageNow;
	}
	
	
	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public long getTotalItemNumber() {
		return totalItemNumber;
	}


	public void setTotalItemNumber(long totalItemNumber) {
		this.totalItemNumber = totalItemNumber;
	}


	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}


	//��ȡ��ҳ��
	public int getTotalPageNumber(){
		
		int totalPageNumber = (int)totalItemNumber / pageSize;
		
		if(totalItemNumber % pageSize != 0){
			totalPageNumber++;
		}
		
		return totalPageNumber;
	}
	
	
	public boolean isHasNext(){
		if(getPageNow() < getTotalPageNumber()){
			return true;
		}
		
		return false;
	}
	
	public boolean isHasPrev(){
		if(getPageNow() > 1){
			return true;
		}
		
		return false;
	}
	
	public int getPrevPage(){
		if(isHasPrev()){
			return getPageNow() - 1;
		}
		
		return getPageNow();
	}
	
	public int getNextPage(){
		if(isHasNext()){
			return getPageNow() + 1;
		}
		
		return getPageNow();
	}
}
