/*
 * Korea Contents Company R&D TEAM
 * Developer : lee su hong
 * Last-Modified : 2013.11.06
 

package com.kcontents.hyuneum.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kcontents.hyuneum.domain.Notice;

public interface NoticeDao {
	public static String SQLNAMESPACE = "notice.";
	
	public List getNoticeList();
	
	public Notice getNotice(int no);
	
	public boolean postNotice(Notice notice);
}
*/