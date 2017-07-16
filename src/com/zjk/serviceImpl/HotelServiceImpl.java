package com.zjk.serviceImpl;
import java.util.List;
import org.springframework.stereotype.Component;

import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;
import com.zjk.service.BaseService;
import com.zjk.service.HotelService;


@Component("hotelService")
public class HotelServiceImpl extends BaseService implements HotelService {
	/* 
	 * 查看所有宾馆
	 */
	public List<Hotel> findAllhotel() {
		// TODO Auto-generated method stub
		return hotelDao.findallhotel();
	}

	/*分页分类查看宾馆
	 */
	@Override
	public List<Hotel> getHotels(Integer pageSize, Integer pageNow, int id) {
		// TODO Auto-generated method stub
		return hotelDao.gethotels(pageSize,pageNow,id);
		
	}

	//根据住宿类型查看
	public List<Hotel> findhBytype(int id) {
		// TODO Auto-generated method stub
		return this.hotelDao.findhBytype(id);
	}

	//分页查看出行
	public List<Traffic> findtra(Integer pageSize, Integer pageNow) {
		// TODO Auto-generated method stub
		return this.hotelDao.findtra(pageSize,pageNow);
	}

	//查看全部出行
	public  List<Traffic> findAlltra() {
		// TODO Auto-generated method stub
		return this.hotelDao.findAlltra();
	}
	//根据id查看住宿
	public List<Hotel> viewHbyid(int id) {
		// TODO Auto-generated method stub
		return this.hotelDao.viewHbyid(id);
	}
	//增加住宿
	public void addhotel(Hotel a) {
		this.hotelDao.addhotel(a);
		
	}
	//删除住宿
	public void deletehotel(Hotel h1) {
		this.hotelDao.deletehotel(h1);
	}

	//获取住宿类型
	public List<Hotel_type> gethoty(int id) {
		// TODO Auto-generated method stub
		return this.hotelDao.gethoty(id);
	}

	//编辑信息
	public void edithotel(Hotel h1) {
		// TODO Auto-generated method stub
		this.hotelDao.edithotel(h1);
	}

	//根据id查找
	public List<Hotel> findhotelByid(int id) {
		// TODO Auto-generated method stub
		return this.hotelDao.findhotelbyid(id);
	}

	

}
