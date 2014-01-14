/*package com.kcontents.hyuneum.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.dao.EstimateDao;
import com.kcontents.hyuneum.domain.Estimate;

@Repository
public class EstimateDaoImpl implements EstimateDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List getEstimateList(HashMap map) {
		return sqlSession.selectList(SQLNAMESPACE+"getEstimateList", map);
	}

	@Override
	public Estimate getEstimate(int no) {
		return sqlSession.selectOne(SQLNAMESPACE+"getEstimate", no);
	}

	@Override
	public boolean postEstimate(Estimate estimate) {
		 int result = sqlSession.insert(SQLNAMESPACE+"postEstimate", estimate);
		 System.out.println("DAO POST ESTIMATE RESULT :: " + result);
		 return result==1? true : false;
	}

	@Override
	public int getEstimateMax() {
		return sqlSession.selectOne(SQLNAMESPACE+"getEstimateMax");
	}


}
*/