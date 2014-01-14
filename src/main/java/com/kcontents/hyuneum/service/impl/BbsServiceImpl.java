package com.kcontents.hyuneum.service.impl;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcontents.hyuneum.dao.BbsDao;
import com.kcontents.hyuneum.domain.Bbs;
import com.kcontents.hyuneum.service.BbsService;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	public BbsDao bbsDao;
	
	@Override
	public List getBbsList(HashMap map) {
		return bbsDao.getBbsList(map);
	}

	@Override
	public Bbs getBbs(HashMap map) {
		// TODO Auto-generated method stub
		return bbsDao.getBbs(map);
	}

	@Override
	public boolean postBbs(Bbs bbs) {
		return bbsDao.postBbs(bbs);
	}

	@Override
	public int getBbsMaxSize(HashMap map) {
		return bbsDao.getBbsMaxSize(map);
	}

	@Override
	public boolean deleteBbs(HashMap map) {
		return bbsDao.deleteBbs(map);
	}
	
}
