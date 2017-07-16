package com.zjk.serviceImpl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.zjk.model.Attractions;
import com.zjk.service.AttractionService;
import com.zjk.service.BaseService;

@Component("attractionService")
public class AttractionServiceImpl extends BaseService implements AttractionService {

	
	public List<Attractions> getAtts(Integer pageSize, Integer pageNow) {
		// TODO Auto-generated method stub
		
		return this.attractionDao.getAtts(pageSize,pageNow);
	}

	
	public List<Attractions> findAllatts() {
		// TODO Auto-generated method stub
		return this.attractionDao.findallatts();
	}

	

	public List<Attractions> findaByid(int id) {
		// TODO Auto-generated method stub
		return this.attractionDao.findabyid(id);
	
	}

	
	public List<Attractions> findallatt() {
		// TODO Auto-generated method stub
		return this.attractionDao.findallatts();
	}

	
	public void addAtt(Attractions a) {
			this.attractionDao.addatt(a);
		
	}


	//删除景点
	public void deleteatt(Attractions att) {
		// TODO Auto-generated method stub
		this.attractionDao.deleteatt(att);
	}


	//修改景点信息
	public void editatt(Attractions a) {
		// TODO Auto-generated method stub
		this.attractionDao.editatt(a);
	}
	

}
