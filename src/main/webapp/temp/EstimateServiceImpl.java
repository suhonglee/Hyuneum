/*package com.kcontents.hyuneum.service.impl;

 * Korea Contents Company R&D TEAM
 * Developer : lee su hong
 * Last-Modified : 2013.11.06
 


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcontents.hyuneum.dao.EstimateDao;
import com.kcontents.hyuneum.domain.Estimate;
import com.kcontents.hyuneum.service.EstimateService;
import com.kcontents.hyuneum.service.EstimateService;

@Service
public class EstimateServiceImpl implements EstimateService {

	@Autowired
	public EstimateDao estimateDao;
	
	@Override
	public List getEstimateList(HashMap map) {
		return estimateDao.getEstimateList(map);
	}

	@Override
	public Estimate getEstimate(int no) {
		// TODO Auto-generated method stub
		return estimateDao.getEstimate(no);
	}

	@Override
	public boolean postEstimate(Estimate estimate) {
		return estimateDao.postEstimate(estimate);
	}

	@Override
	public int getEstimateMax() {
		return estimateDao.getEstimateMax();
	}
	
}
*/