package com.kcontents.hyuneum.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.dao.AdminDao;
import com.kcontents.hyuneum.domain.Admin;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean postBbs(Admin admin) {
		return sqlSession.insert(SQLNAMESPACE+"postAdmin",admin) == 1 ? true : false;
	}

	@Override
	public Admin getBbs(Admin admin) {
		return sqlSession.selectOne(SQLNAMESPACE+"getAdmin",admin);
	}
	
}
