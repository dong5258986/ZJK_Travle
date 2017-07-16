
package com.zjk.service;

import java.util.List;
import com.zjk.model.Specialty;


/**
*包名：com.zjk.service
 *功能：TODO 
*作者：董壮
*日期：2017-5-18下午6:39:36
 */


public interface SpecialtyService {

	/**   
	 * 方法功能说明：分页 查看特产 
	 * 创建：2017-5-18 by dong   
	 * @参数： @return      
	 * @param pageNow 
	 * @param pageSize 
	 * @param id 
	 * @param st_id 
	 * @return List<Specialty>
	 */
	public List<Specialty> findspec(Integer pageSize, Integer pageNow, int id);


	/**  
	 * 方法功能说明： 根据类型id查看特产  
	 * 创建：2017年5月18日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return List<Specialty>     
	 */
	public List<Specialty> findspecByst(int st_id);


	/**  
	 * 方法功能说明：查看所有  
	 * 创建：2017年6月2日 by dong   
	 * @参数： @return      
	 * @return Map<String,Object>     
	 */  
	public List<Specialty> findallspec();


	/**  
	 * 方法功能说明：增加  
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
	public List<Specialty> findspec1(Integer pageSize, Integer pageNow);


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
