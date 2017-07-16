
package com.zjk.daoImpl;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import com.zjk.dao.AttractionDao;
import com.zjk.dao.BaseDao;
import com.zjk.model.Attractions;

/**
 * 
*包名：com.zjk.daoImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:47:55
 */
@Component("attractionDao")
public  class AttractionDaoImpl extends BaseDao implements AttractionDao{

	//分页查看
	public List<Attractions> getAtts(Integer pageSize, Integer pageNow) {
		Session session = sessionFactory.openSession();
		Query query = session
				.createQuery("from Attractions");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Attractions> atts = query.list();
		session.close();
		return atts;
	}

	public List<Attractions> findallatts() {
		@SuppressWarnings("unchecked")
		List<Attractions> att=hibernateTemplate.find("from Attractions");
		
		return att;
	}


	public List<Attractions> findabyid(int id) {
		@SuppressWarnings("unchecked")
		List<Attractions> att=hibernateTemplate.find("from Attractions where a_id='"+id+"'");
		return att;
	}
	//增加景点
	public void addatt(Attractions a) {
		// TODO Auto-generated method stub
		hibernateTemplate.save(a);
	}

	//删除景点
	public void deleteatt(Attractions att) {
		hibernateTemplate.delete(att);
		
	}

	//修改景点
	public void editatt(Attractions a) {
		hibernateTemplate.update(a);
		
	}

}
