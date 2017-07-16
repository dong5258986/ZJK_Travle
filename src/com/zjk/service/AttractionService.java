package com.zjk.service;
import java.util.List;
import com.zjk.model.Attractions;


public interface AttractionService {

	/**  
	 * 
	 * 方法功能说明：分页查看景点信息  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> getAtts(Integer pageSize, Integer pageNow);

	/**  
	 * 
	 * 方法功能说明：查看景点数量  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findAllatts();


	public  void addAtt(Attractions a);

	/**  
	 * 
	 * 方法功能说明：  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @param id      
	 * @return void
	 */
	public  abstract void deleteatt(Attractions att);

	/**  
	 * 
	 * 方法功能说明：  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findaByid(int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return List<Attractions>
	 */
	public abstract List<Attractions> findallatt();

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public abstract void editatt(Attractions a);

}
