package com.zjk.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjk.controller.BaseController;
import com.zjk.model.User;


/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017-5-17下午9:49:55
 */
@Controller
@RequestMapping(value="/login")
public class LoginController extends BaseController {
	/**
	 * 方法功能说明：  
	 * 创建：2017-5-17 by dong   
	 * @参数： @param user
	 * @参数： @param request
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/userlogin")
	public String userlogin(User user,HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(30*60);
		
		List<User> uu = userService.findUserByName(user.getUsername());
		System.out.println("mima"+uu.get(0).getPassword());
		if(uu != null && uu.size() > 0&&user.getPassword().equals(uu.get(0).getPassword())){
			User u = uu.get(0);
			session.removeAttribute("wuquanxian");
			session.setAttribute("role", u.getRole());
			session.setAttribute("user", uu);
			return "totaljsp/manage/man_index";
		}
		return "totaljsp/manage/login";
	}
	
	/**
	 * 方法功能说明：  
	 * 创建：2017-5-17 by dong   
	 * @参数： @param request
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/outlogin")
	public String outlogin(HttpServletRequest request){
		HttpSession session = request.getSession();
		 session.removeAttribute("chenggong");
		session.removeAttribute("role");
		session.removeAttribute("username");
		session.removeAttribute("wuquanxian");
		return "totaljsp/manage/login";
	}
}
