package com.zjk.interceptors;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zjk.controller.BaseController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * 方法说明:
 * @author IBird
 * @date 2016/6/3
 */
public class FirstInterceptors extends BaseController implements HandlerInterceptor  {

	/**
	 * 渲染视图之后被调用. 释放资源
	 */
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object obj, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 调用目标方法之后, 但渲染视图之前. 
	 * 可以对请求域中的属性或视图做出修改. 
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj, ModelAndView mv) throws Exception {
		// TODO Auto-generated method stub
	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.HandlerInterceptor#preHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object)
	 */
	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 该方法在目标方法之前被调用.
	 * 若返回值为 true, 则继续调用后续的拦截器和目标方法. 
	 * 若返回值为 false, 则不会再调用后续的拦截器和目标方法. 
	 * 
	 * 可以考虑做权限. 日志, 事务等. 
	 */
	
	/*public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object obj) throws Exception {
		HttpSession session = request.getSession();
		String role1 = (String)session.getAttribute("role");
		
		if(role1==null||role1=="shangjia"){
			String abc = "无权限";
			session.setAttribute("wuquanxian", abc);
			request.getRequestDispatcher("/login/userlogin").forward(request, response); 
			return false;
		
		}
		String url = request.getRequestURL().toString();
		 response.getWriter().print("信息");  
		System.out.println("ssssssddddd"+url);
		return true;
		}*/
	
	
}
