/**
s*包名：com.zjk.daoImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:47:24
 */
package com.zjk.daoImpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;

import com.zjk.dao.BaseDao;
import com.zjk.dao.PostDao;
import com.zjk.model.Commnent;

import com.zjk.model.Posts;

/**
*包名：com.zjk.daoImpl
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午6:47:24
 */
@Component("postDao")
public class PostDaoImpl extends BaseDao implements PostDao{


	public List<Posts> findallpost() {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unchecked")
		List<Posts> post=hibernateTemplate.find("from Posts");
		return post;
	}

	public List<Commnent> findallcom() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Commnent> com=hibernateTemplate.find("from Commnent");
		return com;
	}


	public List<Posts> viewpost(Integer pageSize, Integer pageNow) {
		Session session = sessionFactory.openSession();
		
		Query query = session
				.createQuery("from Posts ");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Posts> post = query.list();
		
		session.close();
		return post;
	}

}
