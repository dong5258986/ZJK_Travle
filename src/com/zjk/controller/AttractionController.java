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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import com.zjk.pageModel.Page;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import com.zjk.model.Attractions;
import com.zjk.model.User;


/**
*包名：com.zjk.controller
 *功能：TODO 
*作者：董壮
*日期：2017年5月16日下午7:18:05
 */

@Controller
@RequestMapping("/attraction")
public class AttractionController extends BaseController{
	private int a_id;

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int a_id) {
		this.a_id = a_id;
	}

	/**
	 * 
	 * 方法功能说明：分页查看景点信息  
	 * 创建：2017年5月16日 by dong   
	 * @参数： @param pageSize
	 * @参数： @param pageNow   
	 */
		@RequestMapping("/viewatt")
		public String Viewatts(HttpServletRequest request , Map<String , Object> map,
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
			List<Attractions> att = attractionService.getAtts(pageSize, pageNow);
			Page page = new Page();
			page.setPageNow(pageNow);
			page.setPageSize(pageSize);
			page.setTotalItemNumber(attractionService.findAllatts().size());
			map.put("atts", att);
			request.setAttribute("pages", page);
			return "totaljsp/about/att_index";
		}
		
		/**
		 * 方法功能说明：添加景点信息
		 * 创建：2017年5月16日 by dong   
		 * @参数： @param att
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/addatts")
		public void addAtt(Attractions att,HttpServletRequest request, HttpServletResponse response)
				throws IllegalStateException, IOException{
			
			CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
					request.getSession().getServletContext());
	
			Attractions a = new Attractions();
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
							System.out.println(myFileName);
							// 重命名上传后的文件名
							String fileName = file.getOriginalFilename();
							// 定义上传路径
							String path =	"E:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\Zjk_Travle\\images\\"+ fileName;
							File localFile = new File(path);
							a.setA_picture(fileName);
							file.transferTo(localFile);
					
					}
					}
					
					
					// 记录上传该文件后的时间
					int finaltime = (int) System.currentTimeMillis();
					System.out.println(finaltime - pre);
				}

			}	
			a.setA_id(a_id);
			a.setA_name(att.getA_name());
			a.setA_info(att.getA_info());
			a.setA_address(att.getA_address());
			a.setA_infotitle(att.getA_infotitle());
			attractionService.addAtt(a);
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
		 * 方法功能说明：删除景点 
		 * 创建：2017年5月16日 by dong   
		 * @参数： @param id
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/deleteatt")
		public void deleteAtt(Attractions atts,HttpServletRequest request, HttpServletResponse response){
			Attractions att=new Attractions();
			
			att.setA_id(atts.getA_id());
			attractionService.deleteatt(att);
		}
		
		/**
		 * 方法功能说明：  
		 * 创建：2017年5月16日 by dong   
		 * @参数： @param id
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/findattbyid")
		public void Findattbyid(Attractions att,HttpServletRequest request,HttpServletResponse response)throws Exception{
			PrintWriter out = response.getWriter();
			List<Attractions> att1=attractionService.findaByid(att.getA_id());
	
			JSONObject json = new JSONObject();
			json.put("a_name",att1.get(0).getA_name());
			json.put("a_simpinfo",att1.get(0).getA_simpleinfo());
			json.put("a_info",att1.get(0).getA_info());
			out.print(json);
			out.flush();
			out.close();	
		
			
		}
		
		/**
		 * 
		 * 方法功能说明：对景点信息进行编辑 （管理员1）
		 * 创建：2017年5月26日 by dong   
		 * @参数： @return      
		 * @return String
		 */
		@RequestMapping("/editatt")
		public void editatt(Attractions att,HttpServletRequest request, HttpServletResponse response){
			Attractions a=new Attractions();
			a.setA_id(att.getA_id());
			a.setA_info(att.getA_info());
			a.setA_simpleinfo(att.getA_simpleinfo());
			attractionService.editatt(a);
			
		}

		/**
		 * 操作之后无页面刷新 更新之后的数据
		 */
		@RequestMapping("/refreshA")
		public void refreshAtt(HttpServletResponse response)throws Exception{
			PrintWriter out = response.getWriter();
			boolean isempty = false;
			List<Attractions> re=attractionService.findallatt();
			JSONArray jsona = new JSONArray();
			for(int i=0;i<re.size();i++){
			jsona.add(i, re.get(i));		
			}	
			JSONObject json = new JSONObject();
			json.put("jsona", jsona);
			json.put("isempty", isempty);
			out.print(json);
			out.flush();
			out.close();
		}
		//管理:查看景点信息	
		@RequestMapping("/manageatt")
		public  String manageatt(HttpServletRequest request , Map<String , Object> map){
			List<Attractions> atts=attractionService.findAllatts();
			map.put("att", atts);
			return "totaljsp/manage/man_att";
			
		}
		
	
	
}
	
		
		
