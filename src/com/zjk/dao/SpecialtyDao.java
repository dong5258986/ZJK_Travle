
package com.zjk.dao;

import java.util.List;

import com.zjk.model.Specialty;
import com.zjk.model.Strategy;


public interface SpecialtyDao {

	/** 
	 * 方法功能说明：  
	 * 创建：2017-5-18 by dong   
	 * @参数： @return      
	 * @param pageNow 
	 * @param pageSize 
	 * @param st_id 
	 * @return List<Specialty>
	 */
	public List<Specialty> findspec(Integer pageSize, Integer pageNow, int id);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年5月18日 by dong   
	 * @参数： @param st_id
	 * @参数： @return      
	 * @return List<Specialty>     
	 */  
	public List<Specialty> findspecByst(int st_id);

	/**  
	 * 方法功能说明： 查看全部 
	 * 创建：2017年6月4日 by dong   
	 * @参数： @return      
	 * @return List<Specialty>     
	 */  
	public List<Specialty> findallspec();

	

	/**  
	 * 方法功能说明： 增加特产 
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param a      
	 * @return void     
	 */  
	public void addspec(Specialty a);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param spec1      
	 * @return void     
	 */  
	public void deletespec(Specialty spec1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月12日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow
	 * @参数： @return      
	 * @return List<Specialty>     
	 */  
	public List<Specialty> findallspec1(Integer pageSize, Integer pageNow);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param spec1      
	 * @return void     
	 */  
	public void editspec(Specialty spec1);

	/**  
	 * 方法功能说明：  
	 * 创建：2017年6月15日 by dong   
	 * @参数： @param s_id
	 * @参数： @return      
	 * @return List<Specialty>     
	 */  
	public List<Specialty> findspecbyid(int s_id);

}
