/**
*包名：com.zjk.serviceImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:35:35
 */
package com.zjk.serviceImpl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.zjk.model.Strategy;
import com.zjk.service.BaseService;
import com.zjk.service.StrategyService;

/**
*包名：com.zjk.serviceImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:35:35
 */
@Component("strategyService")
public class StrategyServiceImpl extends BaseService implements StrategyService{


	public List<Strategy> findallstr() {
		// TODO Auto-generated method stub
		return this.strategyDao.findallstr();
	}


	public List<Strategy> findstr(Integer pageSize, Integer pageNow) {
		
		return this.strategyDao.findstr(pageSize,pageNow);
	}


	//添加攻略
	public void addstra(Strategy a) {
		this.strategyDao.addstra(a);
		
	}

	//删除攻略
	public void deletestra(Strategy stra1) {
		this.strategyDao.deletastra(stra1);
	}

	//修改攻略
	public void editstrate(Strategy a) {
		// TODO Auto-generated method stub
		this.strategyDao.deitstrate(a);
	}


	/* (non-Javadoc)
	 * @see com.zjk.service.StrategyService#findstrabyid(int)
	 */
	@Override
	public List<Strategy> findstrabyid(int str_id) {
		// TODO Auto-generated method stub
		return this.strategyDao.findstrabyid(str_id);
	}

}
