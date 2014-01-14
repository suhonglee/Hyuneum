package com.kcontents.hyuneum.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcontents.hyuneum.dao.AdminDao;
import com.kcontents.hyuneum.domain.Admin;
import com.kcontents.hyuneum.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	public AdminDao adminDao;
	
	@Override
	public boolean postAdmin(Admin admin) {
		return adminDao.postBbs(admin);
	}

	@Override
	public Admin getAdmin(Admin admin) {
		return adminDao.getBbs(admin);
	}
	
}
