package com.kcontents.hyuneum.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kcontents.hyuneum.domain.Notice;
import com.kcontents.hyuneum.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	public NoticeService noticeService;
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request
			,@RequestParam(value="page",defaultValue="1") int currentPage
			,HttpSession session) {
		HashMap map = new HashMap();
		map.put("page",currentPage);
		map.put("startNumber", currentPage*10-10);
		ArrayList list = (ArrayList) noticeService.getNoticeList();
		request.setAttribute("data", list);
		return "notice/list";
	}
	
	@RequestMapping(value="/{no}", method= RequestMethod.GET)
	public String showList(HttpServletRequest request
			,@PathVariable int no
			,HttpSession session)
	{
		Notice notice = noticeService.getNotice(no);
		request.setAttribute("notice",notice);
		return "notice/detail";
	}
	
	@RequestMapping(value="/", method= RequestMethod.POST)
	public String insert(HttpServletRequest request
			,@ModelAttribute("notice") Notice notice 
			,HttpSession session) throws UnsupportedEncodingException
	{
		System.out.println(notice.toString());
		noticeService.postNotice(notice);
		return home(request,session);
	}
	
	//이미지 첨부 차후 진행
	@RequestMapping(value="/uploadimg")
	public @ResponseBody ArrayList uploadImg(HttpServletRequest request
			,HttpSession session)
	{
		MultipartHttpServletRequest multipart = (MultipartHttpServletRequest)request;
		MultipartFile imgFile = multipart.getFile("photo");
		String imgFileName = imgFile.getOriginalFilename().trim();
		File uploadDir = new File("C:/");
		String filePath = uploadDir.getAbsolutePath()+File.separator;
		File f = new File(filePath+"64");
		if(!f.exists())
		{
			f.mkdirs();
		}
		String finalFilename = filePath+"64"+File.separator+imgFileName;
		try {
			imgFile.transferTo(new File(finalFilename));
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		Enumeration e = request.getParameterNames();
		while(e.hasMoreElements())
		{
			String paramName = (String) e.nextElement();
			System.out.println(paramName+"::"+request.getParameter(paramName));
		}
		return null;
	}
	
	@RequestMapping(value="/detail")
	public String showDetail(HttpServletRequest request
			,HttpSession session)
	{
		return "notice/detail";
	}
	
	@RequestMapping(value="/write")
	public String showWrite(HttpServletRequest request
			,HttpSession session)
	{
		return "notice/write";
	}
}
