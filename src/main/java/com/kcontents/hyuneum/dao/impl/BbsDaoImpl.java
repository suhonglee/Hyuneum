package com.kcontents.hyuneum.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.dao.BbsDao;
import com.kcontents.hyuneum.domain.Bbs;

@Repository
public class BbsDaoImpl implements BbsDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List getBbsList(HashMap map) {
		return sqlSession.selectList(SQLNAMESPACE+"getBbsList", map);
	}

	@Override
	public Bbs getBbs(HashMap map) {
		return sqlSession.selectOne(SQLNAMESPACE+"getBbs", map);
	}

	@Override
	public boolean postBbs(Bbs bbs) {
		 return sqlSession.insert(SQLNAMESPACE+"postBbs", bbs)==1? true : false;
	}

	@Override
	public int getBbsMaxSize(HashMap map) {
		Object obj = sqlSession.selectOne(SQLNAMESPACE+"getBbsMaxSize", map);
		if(obj!=null) return (Integer)obj;
		return 0;
	}

	@Override
	public boolean deleteBbs(HashMap map) {
		return sqlSession.delete(SQLNAMESPACE+"deleteBbs", map)==1? true : false;
	}


}
