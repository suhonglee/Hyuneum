package com.kcontents.hyuneum.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kcontents.hyuneum.common.util.DownloadView;
import com.kcontents.hyuneum.domain.Bbs;
import com.kcontents.hyuneum.service.BbsService;


/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value={"/bbs"})
public class BbsController {
	@Autowired
	public BbsService bbsService;
	private static final Logger logger = LoggerFactory.getLogger(BbsController.class);
	//TOMCAT_PATH exist in DownloadView
//	
	private static final int SESSION_ATTRIBUTE_USERCODE = 888;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showList(HttpServletRequest request
			,@RequestParam(value="code", defaultValue="wannagohome") String code
			,@RequestParam(value="page",defaultValue="1") int currentPage
			,HttpSession session) {
		if(code.equals("wannagohome"))
		{
			return "home";
		}
		if(code.equals("estimate") && (Integer)session.getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
		{
			return "admin/login";
		}
		System.out.println("IN IN IN " + code);
		HashMap map = new HashMap();
		map.put("code",code);
		map.put("page",currentPage);
		map.put("startNumber", currentPage*10-10);
		ArrayList list = (ArrayList) bbsService.getBbsList(map);
		request.setAttribute("data", list);
		request.setAttribute("pageSize", bbsService.getBbsMaxSize(map)/10+1);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("firstPage", (((int)((currentPage-1)/10))*10)+1);
		request.setAttribute("pageCount", ((currentPage-1)/10)+1);
		request.setAttribute("code",code);
		System.out.println("IN IN IN " + list);
		return code+"/list";
	}
	
	@RequestMapping(value="/{no}", method= RequestMethod.GET)
	public String show(HttpServletRequest request
			,@RequestParam(value="code") String code
			,@PathVariable int no
			,HttpSession session)
	{
		if(code.equals("estimate") && (Integer)session.getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
		{
			return "admin/login";
		}
		
		HashMap map = new HashMap();
		map.put("no",no);
		map.put("code",code);
		Bbs bbs = bbsService.getBbs(map);
		request.setAttribute("bbs",bbs);
		
		return bbs.getCode()+"/detail";
	}
	
	@RequestMapping(value="/", method= RequestMethod.POST)
	public String insert(HttpServletRequest request
			,@ModelAttribute("bbs") Bbs bbs 
			,@RequestPart(value="file", required=false)MultipartFile file
			,HttpSession session) throws UnsupportedEncodingException
	{
		if(bbs.getCode().equals("notice") && (Integer)session.getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
		{
			return "admin/login";
		}
		if(file!=null)
		{
			String path = bbs.getTel()+"/"+new SimpleDateFormat("yyyyMMddkkmmss").format(new Date())+"/";
			FileOutputStream fos = null;
			try 
			{
				File f = new File(DownloadView.TOMCAT_PATH+path+file.getOriginalFilename());
				if(! f.exists())
				{
					f.getParentFile().mkdirs();
				}
				byte fileData[] = file.getBytes();
				fos = new FileOutputStream(f);
				fos.write(fileData);
				bbs.setFileName(file.getOriginalFilename());
				path = path.replace("/", "_");
				bbs.setFilePath(path+file.getOriginalFilename());
				bbs.setFileSize((int)f.length());
			}
			catch (IOException e)
			{
				e.printStackTrace();
			}
			finally
			{
				if(fos != null)
				{
					try
					{
						fos.close();
					}
					catch(Exception e)
					{
						e.printStackTrace();
					}
				}
			}
		}
		bbsService.postBbs(bbs); //true false 처리 필요
		if(bbs.getCode().equals("estimate"))
		{
			return "redirect:/";
		}
		return showList(request,bbs.getCode(),1,session);
	}
	
	@RequestMapping(value="/{no}", method=RequestMethod.DELETE)
	public @ResponseBody boolean delete(HttpServletRequest request
			,@RequestParam(value="code", required=false) String code
			,@PathVariable int no
			,HttpSession session)
	{
		HashMap map = new HashMap();
		map.put("no",no);
//		bbsService.deleteBbs(map); //true false 처리 필요
		return bbsService.deleteBbs(map);
	}
	@RequestMapping(value="/download/{filePath:.*}", method=RequestMethod.GET)
	public ModelAndView download(HttpServletRequest request
			,@PathVariable String filePath
			,HttpSession session)
	{
		return new ModelAndView("downloadView","filePath",filePath.replace("_", "/"));
	}
	
	@RequestMapping(value="/write")
	public String showWrite(HttpServletRequest request
			,@RequestParam(value="code") String code
			,HttpSession session)
	{
		if(code.equals("notice") && (Integer)session.getAttribute("userCode")!=SESSION_ATTRIBUTE_USERCODE)
		{
			return "admin/login";
		}
		
		request.setAttribute("code",code);
		return code+"/write";
	}
	
	@RequestMapping(value="/editor")
	public String editor(HttpServletRequest request)
	{
		return "/editor";
	}
}