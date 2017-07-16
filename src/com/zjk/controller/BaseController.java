package com.zjk.controller;
import javax.annotation.Resource;
import com.zjk.service.AttractionService;
import com.zjk.service.HotelService;
import com.zjk.service.PostService;
import com.zjk.service.SpecialtyService;
import com.zjk.service.StrategyService;
import com.zjk.service.UserService;

/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017-5-16下午8:31:13
 */
public class BaseController {
	private static final long serialVersionUID = 1L;
	protected UserService userService;
	protected AttractionService attractionService;
	protected HotelService hotelService;
	protected SpecialtyService specialtyService;
	protected StrategyService strategyService;
	protected PostService postService;
	
	
	public StrategyService getStrategyService() {
		return strategyService;
	}
	@Resource
	public void setStrategyService(StrategyService strategyService) {
		this.strategyService = strategyService;
	}
	public PostService getPostService() {
		return postService;
	}
	@Resource
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	public HotelService getHotelService() {
		return hotelService;
	}
	@Resource
	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}
	public AttractionService getAttractionService() {
		return attractionService;
	}
	@Resource
	public void setAttractionService(AttractionService attractionService) {
		this.attractionService = attractionService;
	}
	public UserService getUserService() {
		return userService;
	}
	@Resource
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public SpecialtyService getSpecialtyService() {
		return specialtyService;
	}
	@Resource
	public void setSpecialtyService(SpecialtyService specialtyService) {
		this.specialtyService = specialtyService;
	}
	
	
}
