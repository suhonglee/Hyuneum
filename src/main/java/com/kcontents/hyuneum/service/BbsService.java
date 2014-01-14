package com.kcontents.hyuneum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcontents.hyuneum.domain.Bbs;

public interface BbsService {
	
	public List getBbsList(HashMap map);
	
	public Bbs getBbs(HashMap map);
	
	public int getBbsMaxSize(HashMap map);
	
	public boolean postBbs(Bbs bbs);
	
	public boolean deleteBbs(HashMap map);
}
