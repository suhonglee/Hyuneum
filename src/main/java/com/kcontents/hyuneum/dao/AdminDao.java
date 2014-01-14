package com.kcontents.hyuneum.dao;

import com.kcontents.hyuneum.domain.Admin;

public interface AdminDao {
	public static String SQLNAMESPACE = "admin.";
	
	public boolean postBbs(Admin admin);
	
	public Admin getBbs(Admin admin);
}
