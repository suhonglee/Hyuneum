package com.kcontents.hyuneum.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.domain.Bbs;

public interface BbsDao {
	public static String SQLNAMESPACE = "bbs.";
	
	public List getBbsList(HashMap map);
	
	public Bbs getBbs(HashMap map);
	
	public boolean postBbs(Bbs bbs);
	
	public int getBbsMaxSize(HashMap map);
	
	public boolean deleteBbs(HashMap map);
}
