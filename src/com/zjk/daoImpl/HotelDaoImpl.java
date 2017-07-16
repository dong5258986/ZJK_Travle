package com.zjk.daoImpl;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import com.zjk.dao.BaseDao;
import com.zjk.dao.HotelDao;
import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;


@Component("hotelDao")
public class HotelDaoImpl  extends BaseDao implements HotelDao{


	//分页查看宾馆
	public List<Hotel> gethotels(Integer pageSize, Integer pageNow, int id) {
		Session session = sessionFactory.openSession();
	
		Query query = session
				.createQuery("from Hotel where hty_id='"+id+"'");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Hotel> htt = query.list();
		
		session.close();
		return htt;
	}

	/* 查看所有宾馆
	 **/
	public List<Hotel> findallhotel() {
		@SuppressWarnings("unchecked")
		List<Hotel> htt=hibernateTemplate.find("from Hotel");
		return htt;
	}

	//根据住宿类型查看
	public List<Hotel> findhBytype(int id) {
		@SuppressWarnings("unchecked")
		List<Hotel> htt=hibernateTemplate.find("from Hotel where hty_id='"+id+"'");
		return htt;
	}

	//分页查看交通
	public List<Traffic> findtra(Integer pageSize, Integer pageNow) {
		Session session = sessionFactory.openSession();	
		Query query = session
				.createQuery("from Traffic ");
		query.setFirstResult((pageNow - 1) * pageSize);
		query.setMaxResults(pageSize);
		@SuppressWarnings("unchecked")
		List<Traffic> tra = query.list();	
		session.close();
		return tra;
	}

	//查看全部交通
	public List<Traffic> findAlltra() {
		@SuppressWarnings("unchecked")
		List<Traffic> tra =hibernateTemplate.find("from Traffic");
		return tra;
	}

	
	public List<Hotel> viewHbyid(int id) {
		@SuppressWarnings("unchecked")
		List<Hotel> htt=hibernateTemplate.find("from Hotel where h_id='"+id+"'");
		return htt;
	}

	
	public void addhotel(Hotel a) {
	hibernateTemplate.save(a);
	}

	public void deletehotel(Hotel h1) {
	hibernateTemplate.delete(h1);
	}
	//
	public List<Hotel_type> gethoty(int id) {
		@SuppressWarnings("unchecked")
		List<Hotel_type> tra =hibernateTemplate.find("from Hotel_type where hty_id ='"+id+"'");
		return tra;
	}

	//编辑信息
	public void edithotel(Hotel h1) {
		hibernateTemplate.update(h1);
		
	}

	//根据id查找
	public List<Hotel> findhotelbyid(int id) {
		@SuppressWarnings("unchecked")
		List<Hotel> htt=hibernateTemplate.find("from Hotel where hty_id='"+id+"'");
		return htt;
	}

}
