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
import com.zjk.model.Specialty;
import com.zjk.pageModel.Page;

import net.sf.json.JSONObject;

/**
 *包名：com.zjk.controller
 *功能：TODO 
 *作者：董壮
 *日期：2017-5-14下午9:20:56
 */
@Controller
@RequestMapping(value="/specialty")
public class SpecialtyController extends BaseController{
	private int s_id;
	
	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	/**
	 * 方法功能说明：  查看特产
	 * 创建：2017-5-18 by dong   
	 * @参数： @param request
	 * @参数： @param map
	 * @参数： @return
	 * @参数： @throws Exception      
	 * @return String
	 */
	@RequestMapping("/viewspec")
	public String ViewSpecialty(HttpServletRequest request , Map<String , Object> map,
			@RequestParam(value="pageSize",required=false) Integer pageSize ,
			@RequestParam(value="pageNow",required=false) Integer pageNow,
			@RequestParam(value="st_id",required=false)  Integer st_id){
			if(st_id != null){
				 id=st_id;
				} else{
				 id = 1;
				}
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
			List<Specialty> spec =specialtyService.findspec(pageSize,pageNow,id);
			Page page = new Page();
			page.setPageNow(pageNow);
			page.setPageSize(pageSize);
			page.setTotalItemNumber(specialtyService.findallspec().size());
			map.put("specs",spec);
			request.setAttribute("pages", page);
			return "totaljsp/specialty/spec_index";
		
	}
	
	//管理特产
	@RequestMapping("/mangspec")
	public String manageSpecialty(HttpServletRequest request , Map<String , Object> map,
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
			List<Specialty> spec =specialtyService.findspec1(pageSize,pageNow);
			Page page = new Page();
			page.setPageNow(pageNow);
			page.setPageSize(pageSize);
			page.setTotalItemNumber(specialtyService.findallspec().size());
			map.put("specs",spec);
			request.setAttribute("pages", page);
			
			return "totaljsp/manage/man_spec";
		
	}
	
	
	/**
	 * 方法功能说明：添加特产信息
	 * 创建：2017年5月16日 by dong   
	 * @参数： @param att
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/addspec")
	public void addSpec(Specialty spec,HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException{
		
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		Specialty a = new Specialty();
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
						a.setS_image(fileName);
						file.transferTo(localFile);
					}
				}		
				// 记录上传该文件后的时间
				int finaltime = (int) System.currentTimeMillis();
				System.out.println(finaltime - pre);
			}
		}	
		a.setS_id(s_id);
		a.setS_info(spec.getS_info());
		a.setS_name(spec.getS_name());
		a.setS_price(spec.getS_price());
	
		specialtyService.addspec(a);
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
	 * 方法功能说明：删除特产  
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param spec
	 * @参数： @param request
	 * @参数： @param response      
	 * @return void     
	 */  
	@RequestMapping("/deletespec")
	public void deleteSpec(Specialty spec,HttpServletRequest request, HttpServletResponse response){
		Specialty spec1=new Specialty();
		
		spec1.setS_id(spec.getS_id());
		specialtyService.deletespec(spec1);
	}
	
	/**  
	 * 方法功能说明：编辑特产  
	 * 创建：2017年6月9日 by dong   
	 * @参数： @param spec
	 * @参数： @param request
	 * @参数： @param response      
	 * @return void     
	 */  
	@RequestMapping("/editspec")
	public void editSpec(Specialty spec,HttpServletRequest request, HttpServletResponse response){
		Specialty spec1=new Specialty();
		
		spec1.setS_id(spec.getS_id());
		spec1.setS_bussiness(spec.getS_bussiness());
		spec1.setS_info(spec.getS_info());
		spec1.setS_price(spec.getS_price());
		specialtyService.editspec(spec1);
	
}
	@RequestMapping("/findspecbyid")
	public void findspecByid(Specialty spec,HttpServletRequest request, HttpServletResponse response) throws Exception{
		PrintWriter out =response.getWriter();
		List<Specialty> spec1=specialtyService.findspecbyid(spec.getS_id());
		JSONObject json = new JSONObject();
		json.put("s_name",spec1.get(0).getS_name());
		json.put("s_price",spec1.get(0).getS_price());
		json.put("s_bussiness",spec1.get(0).getS_bussiness());
		json.put("s_info",spec1.get(0).getS_info());
	
		out.print(json);
		out.flush();
		out.close();	
		
	}
}