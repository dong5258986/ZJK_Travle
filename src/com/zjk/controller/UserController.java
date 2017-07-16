/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午7:46:40
 */
package com.zjk.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zjk.model.User;

import net.sf.json.JSONObject;

/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午7:46:40
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}


	/**
	 * 方法功能说明：查看用户信息（管理员权限）  
	 * 创建：2017年5月19日 by dong   
	 * @参数： @return      
	 * @return String
	 */
		@RequestMapping("/viewalluser")
		public String viewalluser(HttpServletRequest request,Map<String , Object> map){
		
			List<User> user1=userService.findalluser();
			map.put("users", user1);
			return "totaljsp/manage/man_user";
			
	}
		
	
		//删除用户
		@RequestMapping("/deleteuser")
		public void deleteUser(User user,HttpServletRequest request, HttpServletResponse response){
			User user1=new User();			
			user1.setId(user.getId());
			System.out.println("sssss");
			userService.deleteuser(user1);
		}
		
		/**
		 *  
		 * 方法功能说明：根据id查找用户信息  
		 * 创建：2017年6月1日 by dong   
		 * @throws IOException 
		 */
		@RequestMapping(value="finduser")
		public void finduserbyid(User user,HttpServletRequest request,HttpServletResponse response) throws IOException{
			PrintWriter out = response.getWriter();
			List<User> user1=userService.finduserbyid(user.getId());
	
			JSONObject json = new JSONObject();
			json.put("username",user1.get(0).getUsername() );
			json.put("truename",user1.get(0).getTurename() );
			json.put("phone",user1.get(0).getPhone() );
		
			
			out.print(json);
			out.flush();
			out.close();	
			
		
		}
		
		/**
		 * 方法功能说明：管理编辑人员信息  
		 * 创建：2017年5月26日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("edituser")
		public void editUser(User user,HttpServletRequest request, HttpServletResponse response){
			User user1=new User();			
			user1.setId(user.getId());
			user1.setUsername(user.getUsername());
			user1.setTurename(user.getTurename());
			user1.setPhone(user.getPhone());
			userService.edituser(user1);
			
		}
		//用户注册.....
		@RequestMapping("/sign")
		public String Sign(User user,HttpServletRequest request, HttpServletResponse response){
			User user1=new User();
			user1.setId(id);
			user1.setUsername(user.getUsername());
			user1.setPassword(user.getPassword());
			user1.setPhone(user.getPhone());
			user1.setUseremail(user.getUseremail());
			userService.sign(user1);	
			
			//注册成功界面
			return "";
			
		}
		
}
