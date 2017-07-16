
package com.zjk.service;

import javax.annotation.Resource;

import com.zjk.dao.AttractionDao;
import com.zjk.dao.HotelDao;
import com.zjk.dao.PostDao;
import com.zjk.dao.SpecialtyDao;
import com.zjk.dao.StrategyDao;
import com.zjk.dao.UserDao;


public class BaseService {
	private static final long serialVersionUID = 1L;
	protected 	 UserDao userDao;
	protected  AttractionDao attractionDao;
	protected HotelDao hotelDao;
	protected  SpecialtyDao specialtyDao;
	protected PostDao postDao;
	protected StrategyDao strategyDao;
	
	
	public StrategyDao getStrategyDao() {
		return strategyDao;
	}
	@Resource
	public void setStrategyDao(StrategyDao strategyDao) {
		this.strategyDao = strategyDao;
	}
	public PostDao getPostDao() {
		return postDao;
	}
	@Resource
	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}
	public HotelDao getHotelDao() {
		return hotelDao;
	}
	@Resource
	public void setHotelDao(HotelDao hotelDao) {
		this.hotelDao = hotelDao;
	}
	public AttractionDao getAttractionDao() {
		return attractionDao;
	}
	@Resource
	public void setAttractionDao(AttractionDao attractionDao) {
		this.attractionDao = attractionDao;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	public SpecialtyDao getSpecialtyDao() {
		return specialtyDao;
	}
	@Resource
	public void setSpecialtyDao(SpecialtyDao specialtyDao) {
		this.specialtyDao = specialtyDao;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
