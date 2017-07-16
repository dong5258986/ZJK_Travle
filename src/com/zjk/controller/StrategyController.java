/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017年5月19日下午8:33:34
 */
package com.zjk.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import com.zjk.model.Strategy;
import com.zjk.pageModel.Page;
import com.zjk.utils.DateUtil;

import net.sf.json.JSONObject;

/**
*包名：com.zjk.controller
 *功能：攻略
*作者：董壮
*日期：2017年5月19日下午8:33:34
 */
@Controller
@RequestMapping(value="/strategy")
public class StrategyController extends BaseController{
		
		/**
		 * 方法功能说明： 查看攻略 
		 * 创建：2017年5月19日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/viewStr")
		public String viewStrategy(HttpServletRequest request , Map<String , Object> map,
				@RequestParam(value="pageSize",required=false) Integer pageSize ,
				@RequestParam(value="pageNow",required=false) Integer pageNow ){
			if(pageSize != null){
				pageSize = pageSize+0;
			}else {
				pageSize = 5;
			}
			if(pageNow != null){
				pageNow =pageNow+0;
			} else{
				pageNow = 1;
			}
			List<Strategy> stra=strategyService.findstr(pageSize,pageNow);
			Page page = new Page();
			page.setPageNow(pageNow);
			page.setPageSize(pageSize);
			page.setTotalItemNumber(strategyService.findallstr().size());
			map.put("str", stra);
			return "totaljsp/strategy/str_index";
			
		}
		
		
		
		/**
		 * 方法功能说明：增加攻略  
		 * 创建：2017年5月26日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/addStra")
		public void addStra(Strategy stra,HttpServletRequest request, HttpServletResponse response)
				throws IllegalStateException, IOException{
			
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());
		
			Strategy a = new Strategy();
			// 判断 request 是否有文件上传,即多部分请求
			if (multipartResolver.isMultipart(request)) {
				// 转换成多部分request
				MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
				// 取得request中的所有文件名
				Iterator<String> iter = multiRequest.getFileNames();
				while (iter.hasNext()) {
					// 记录上传过程起始时的时间，用来计算上传时间
					int pre = (int) System.currentTimeMillis();
					// 取得上传文件
					MultipartFile file = multiRequest.getFile(iter.next());
					if (file != null) {
						// 取得当前上传文件的文件名称
						String myFileName = file.getOriginalFilename();
						// 如果名称不为“”,说明该文件存在，否则说明该文件不存在
						if (myFileName.trim() != "") {
						
							// 重命名上传后的文件名
							String fileName =  file.getOriginalFilename();
							// 定义上传路径
							String path =	"E:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\Zjk_Travle\\images\\"+ fileName;
							File localFile = new File(path);
							a.setStr_image(fileName);
							file.transferTo(localFile);
						}
					
					}
							
					// 记录上传该文件后的时间
					int finaltime = (int) System.currentTimeMillis();
					
				}

			}	
		
			a.setStr_id(stra.getStr_id());
			a.setStr_info(stra.getStr_info());
			a.setStr_rectime(stra.getStr_rectime());
			a.setStr_title(stra.getStr_title());
			a.setStr_simpleinfo(stra.getStr_simpleinfo());
			strategyService.addstra(a);
			responseMessage(response);
		
		}
		/**
		 * 
		 * 方法功能说明：添加之后的相应 
		 * 创建：2017年6月2日 by dong   
		 * @参数： @param response      
		 * @return void
		 */
		private void responseMessage(HttpServletResponse response) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=" + "utf-8");
			Writer writer = null;
			try {
				writer = response.getWriter();
				writer.write("{\"code\":" + 200 + ",\"message\":\"" + "上传成功"
						+ "\"}");
				writer.flush();
				writer.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				IOUtils.closeQuietly(writer);
			}
		}
		
		
		/**
		 * 方法功能说明：删除攻略  
		 * 创建：2017年5月26日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/deletestra")
		public void deleteAtt(Strategy stra,HttpServletRequest request, HttpServletResponse response){
			Strategy stra1=new Strategy();
			
			stra1.setStr_id(stra.getStr_id());
			strategyService.deletestra(stra1);
		}
		
		/**
		 * 方法功能说明： 管理查看攻略 
		 * 创建：2017年5月19日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/manageStr")
		public String manageStrategy(HttpServletRequest request , Map<String , Object> map,
				@RequestParam(value="pageSize",required=false) Integer pageSize ,
				@RequestParam(value="pageNow",required=false) Integer pageNow ){
			if(pageSize != null){
				pageSize = pageSize+0;
			}else {
				pageSize = 5;
			}
			if(pageNow != null){
				pageNow =pageNow+0;
			} else{
				pageNow = 1;
			}
			List<Strategy> stra=strategyService.findstr(pageSize,pageNow);
			Page page = new Page();
			page.setPageNow(pageNow);
			page.setPageSize(pageSize);
			page.setTotalItemNumber(strategyService.findallstr().size());
			map.put("str", stra);
			return "totaljsp/manage/man_strategy";
			
		}
		
		/**
		 * 
		 * 方法功能说明：对攻略信息进行编辑 （管理员1）
		 * 创建：2017年5月26日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/editstrate")
		public void editstrate(Strategy str,HttpServletRequest request, HttpServletResponse response){
		
			String time=DateUtil.getNowStrDate();
			Strategy a=new Strategy();
			a.setStr_id(str.getStr_id());
			a.setStr_info(str.getStr_info());
			a.setStr_rectime(str.getStr_rectime());
			a.setStr_title(str.getStr_title());
			a.setStr_time(time);
			strategyService.editstrate(a);
			
		}
		/**
		 * 方法功能说明：根据id查看  
		 * 创建：2017年6月15日 by dong   
		 * @参数：       
		 * @return void
		 * @throws Exception 
		 */
		@RequestMapping("/findstrabyid")
		public void findstraByid(Strategy stra,HttpServletRequest request, HttpServletResponse response) throws Exception{
			PrintWriter out =response.getWriter();
			List<Strategy> stra1= strategyService.findstrabyid(stra.getStr_id());
			JSONObject json = new JSONObject();
			json.put("str_title",stra1.get(0).getStr_title());
			json.put("str_rectime",stra1.get(0).getStr_rectime());
			json.put("str_info",stra1.get(0).getStr_info());
			out.print(json);
			out.flush();
			out.close();	
			
			
		}
		
}
