/**
*包名：com.zjk.daoImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:39:43
 */
package com.zjk.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

import com.zjk.dao.BaseDao;
import com.zjk.dao.StrategyDao;
import com.zjk.model.Strategy;

/**
*包名：com.zjk.daoImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:39:43
 */
@Component("strategyDao")
public class StrategyDaoImpl extends BaseDao implements StrategyDao{

	//查看全部
	public List<Strategy> findallstr() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Strategy>  str =hibernateTemplate.find("from Strategy");
		return str;
	}

	//分页查看
	public List<Strategy> findstr(Integer pageSize, Integer pageNow) {
		Session session = sessionFactory.openSession();
		Query query = session
				.createQuery("from Strategy ");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Strategy> stra = query.list();
		session.close();
		return stra;
	}

	
	public void addstra(Strategy a) {
		hibernateTemplate.save(a);
		
	}

	public void deletastra(Strategy stra1) {
		hibernateTemplate.delete(stra1);
		
	}

	
	public void deitstrate(Strategy a) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(a);
	}

	/* (non-Javadoc)
	 * @see com.zjk.dao.StrategyDao#findstrabyid(int)
	 */
	@Override
	public List<Strategy> findstrabyid(int str_id) {
		List<Strategy>  str =hibernateTemplate.find("from Strategy where str_id='"+str_id+"'");
		return str;
	}

}
