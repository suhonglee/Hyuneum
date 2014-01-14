/*package com.kcontents.hyuneum.service.impl;

 * Korea Contents Company R&D TEAM
 * Developer : lee su hong
 * Last-Modified : 2013.11.06
 


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kcontents.hyuneum.dao.NoticeDao;
import com.kcontents.hyuneum.domain.Notice;
import com.kcontents.hyuneum.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	public NoticeDao noticeDao;
	
	@Override
	public List getNoticeList() {
		return noticeDao.getNoticeList();
	}

	@Override
	public Notice getNotice(int no) {
		// TODO Auto-generated method stub
		return noticeDao.getNotice(no);
	}

	@Override
	public boolean postNotice(Notice notice) {
		return noticeDao.postNotice(notice);
	}
	
}
*/