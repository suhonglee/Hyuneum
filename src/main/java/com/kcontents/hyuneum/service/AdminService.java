package com.kcontents.hyuneum.service;

import java.util.HashMap;

import com.kcontents.hyuneum.domain.Admin;

public interface AdminService {
	
	public boolean postAdmin(Admin admin);
	
	public Admin getAdmin(Admin admin);
}
