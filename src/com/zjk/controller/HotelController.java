
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
import com.zjk.model.Hotel;
import com.zjk.model.Hotel_type;
import com.zjk.model.Traffic;
import com.zjk.pageModel.Page;

import net.sf.json.JSONObject;


@Controller
@RequestMapping(value="/hotel")
public class HotelController extends BaseController{
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * 
	 * 
	 * 方法功能说明：分页查看旅店  
	 * 创建：2017年6月2日 by dong   
	 */
	@RequestMapping("/viewhotel")
	public String ViewHotel(HttpServletRequest request , Map<String , Object> map,
			@RequestParam(value="pageSize",required=false) Integer pageSize ,
			@RequestParam(value="pageNow",required=false) Integer pageNow,
			@RequestParam(value="htyid",required=false) Integer htyid){
		
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
		if(htyid != null){
		 id=htyid;
		} else{
		 id = 1;
		}
		List<Hotel> hotel = hotelService.getHotels(pageSize, pageNow,id);
		List<Hotel_type> hoty=hotelService.gethoty(id);
		Page page = new Page();
		page.setPageNow(pageNow);
		page.setPageSize(pageSize);
		page.setTotalItemNumber(hotelService.findAllhotel().size());
		map.put("hotels", hotel);
		request.setAttribute("pages", page);
		request.setAttribute("type", hoty);
		return "totaljsp/hotel/hotel_index";
	}
	/**
	 * 
	 * 方法功能说明：根据id查看hotel  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/findhotelByid")
	public void  ViewaByid(Hotel hotel,HttpServletRequest request ,HttpServletResponse response)throws Exception{
		PrintWriter out = response.getWriter();
		List<Hotel> hote=hotelService.findhotelByid(hotel.getH_id());
		JSONObject json = new JSONObject();
		json.put("h_name",hote.get(0).getH_name());
		json.put("h_phone",hote.get(0).getH_phone());
		json.put("h_address",hote.get(0).getH_address());
		json.put("h_price",hote.get(0).getH_price());
		json.put("h_info",hote.get(0).getH_info());
		out.print(json);
		out.flush();
		out.close();	
		
	}
	
	/**
	 * 
	 * 方法功能说明：查看出行  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/viewtraffic")
	public String Viewtraffic(HttpServletRequest request , Map<String , Object> map,
			@RequestParam(value="pageSize",required=false) Integer pageSize ,
			@RequestParam(value="pageNow",required=false) Integer pageNow){
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
		List<Traffic> tra =hotelService.findtra(pageSize,pageNow);
		Page page = new Page();
		page.setPageNow(pageNow);
		page.setPageSize(pageSize);
		page.setTotalItemNumber(hotelService.findAlltra().size());
		map.put("traffic", tra);
		request.setAttribute("pages", page);
		return "totaljsp/hotel/tra_index";
		
	}
	/**
	 * 
	 * 方法功能说明：查看出行  
	 * 创建：2017年6月8日 by dong   
	 * @参数： @param request
	 * @参数： @param map
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/viewTra")
	public String viewTra(HttpServletRequest request , Map<String , Object> map){
		List<Traffic> tra=hotelService.findAlltra();
		map.put("tras", tra);
		return "totaljsp/hotel/tra_index";
		
	}
	
	
	/**
	 * 方法功能说明：根据id查看住宿详情  
	 * 创建：2017年6月5日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping(value="/viewHbyid/{id}",method=RequestMethod.GET)
	public String viewHbyid(@PathVariable(value="id") int id,Map<String ,Object> map,
			HttpServletRequest request){
		List<Hotel> tra =hotelService.viewHbyid(id);
		map.put("hotel", tra);
		return "totaljsp/hotel/hotel_info";
		
	}
	
	@RequestMapping("/managehotel")
	public String manageHotel(HttpServletRequest request , Map<String , Object> map,
			@RequestParam(value="pageSize",required=false) Integer pageSize ,
			@RequestParam(value="pageNow",required=false) Integer pageNow){
		List<Hotel> hotel =hotelService.findAllhotel();
		map.put("hotels", hotel);
		return "totaljsp/manage/man_hotel";
		
	}
	
	
	/**
	 * 方法功能说明：添加住宿信息
	 * 创建：2017年5月16日 by dong   
	 * @参数： @param att
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/addhotel")
	public void addHotel(Hotel ho,HttpServletRequest request, HttpServletResponse response)
			throws IllegalStateException, IOException{
		
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());	
		Hotel a = new Hotel();
		if (multipartResolver.isMultipart(request)) {		
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;	
			Iterator<String> iter = multiRequest.getFileNames();
			while (iter.hasNext()) {			
				int pre = (int) System.currentTimeMillis();				
				MultipartFile file = multiRequest.getFile(iter.next());
				if (file != null) {				
					String myFileName = file.getOriginalFilename();				
					if (myFileName.trim() != "") {										
						String fileName =  file.getOriginalFilename();			
						String path =	"E:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\Zjk_Travle\\images\\"+ fileName;
						File localFile = new File(path);
						a.setH_image(fileName);
						file.transferTo(localFile);
					}
				}
								
				int finaltime = (int) System.currentTimeMillis();
				System.out.println(finaltime - pre);
			}
		}	
				a.setH_id(ho.getH_id());
				a.setH_address(ho.getH_address());
				a.setH_info(ho.getH_info());
				a.setH_name(ho.getH_name());
				a.setH_phone(ho.getH_phone());
				hotelService.addhotel(a);
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
	 * 方法功能说明：删除住宿
	 * 创建：2017年5月16日 by dong   
	 * @参数： @param id
	 * @参数： @return      
	 * @return String
	 */
	@RequestMapping("/deletehotel")
	public void deleteHotel(Hotel ho,HttpServletRequest request, HttpServletResponse response){
		Hotel h1=new Hotel();
		
		h1.setH_id(ho.getH_id());
		hotelService.deletehotel(h1);
	}
	/**
	 * 
	 * 方法功能说明：编辑信息  
	 * 创建：2017年6月13日 by dong   
	 * @参数： @param ho
	 * @参数： @param request
	 * @参数： @param response      
	 * @return void
	 */
	@RequestMapping("/edithotel")
	public void  editHoltel(Hotel ho,HttpServletRequest request, HttpServletResponse response){
		Hotel h1=new Hotel();
		h1.setH_id(ho.getH_id());
		h1.setH_address(ho.getH_address());
		h1.setH_info(ho.getH_info());
		h1.setH_name(ho.getH_name());
		h1.setH_phone(ho.getH_phone());
		hotelService.edithotel(h1);
		
	}
	
}
