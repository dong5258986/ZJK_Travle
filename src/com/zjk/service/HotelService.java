package com.zjk.service;
import java.util.List;
import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;

public interface HotelService {

	/**  
	 * 方法功能说明：分页查看宾馆  
	 * 创建：2017年6月2日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @param id 
	 * @return List<Hotel>     
	 */  
	public List<Hotel> getHotels(Integer pageSize, Integer pageNow, int id);

	/**  
	 * 方法功能说明：查找所有宾馆 
	 * 创建：2017年6月2日 by dong   
	 * @参数： @return      
	 * @return Map<String,Object>     
	 */  
	public  List<Hotel> findAllhotel();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Hotel>     
	 */  
	public List<Hotel> findhBytype(int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Traffic>     
	 */  
	public List<Traffic> findtra(Integer pageSize, Integer pageNow);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @return      
	 * @return Map<String,Object>     
	 */  
	public List<Traffic> findAlltra();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Traffic>     
	 */  
	public List<Hotel> viewHbyid(int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void addhotel(Hotel a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param h1      
	 * @return void     
	 */  
	public void deletehotel(Hotel h1);

	/**  
	 * 方法功能说明：查询  
	 * 创建：2017年6月12日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Hotel_type>     
	 */  
	public List<Hotel_type> gethoty(int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param h1      
	 * @return void     
	 */  
	public void edithotel(Hotel h1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月15日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Hotel>     
	 */  
	public List<Hotel> findhotelByid(int id);

}
