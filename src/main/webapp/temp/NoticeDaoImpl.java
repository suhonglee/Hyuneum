/*package com.kcontents.hyuneum.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.dao.NoticeDao;
import com.kcontents.hyuneum.domain.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List getNoticeList() {
		return sqlSession.selectList(SQLNAMESPACE+"getNoticeList");
	}

	@Override
	public Notice getNotice(int no) {
		return sqlSession.selectOne(SQLNAMESPACE+"getNotice", no);
	}

	@Override
	public boolean postNotice(Notice notice) {
		 int result = sqlSession.insert(SQLNAMESPACE+"postNotice", notice);
		 System.out.println("DAO POST NOTICE RESULT :: " + result);
		 return result==1? true : false;
	}


}
*/