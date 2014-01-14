/*
 * Korea Contents Company R&D TEAM
 * Developer : lee su hong
 * Last-Modified : 2013.11.06
 

package com.kcontents.hyuneum.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.domain.Estimate;

public interface EstimateDao {
	public static String SQLNAMESPACE = "estimate.";
	
	public List getEstimateList(HashMap map);
	
	public int getEstimateMax();
	
	public Estimate getEstimate(int no);
	
	public boolean postEstimate(Estimate estimate);
}
*/