/*package com.kcontents.hyuneum.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kcontents.hyuneum.common.util.DownloadView;
import com.kcontents.hyuneum.domain.Estimate;
import com.kcontents.hyuneum.service.EstimateService;


*//**
 * Handles requests for the application home page.
 *//*
@Controller
@RequestMapping("/estimate")
public class EstimateController {
	@Autowired
	public EstimateService estimateService;
	private static final Logger logger = LoggerFactory.getLogger(EstimateController.class);
	//TOMCAT_PATH exist in DownloadView
	private static final String TOMCAT_PATH = "C:/Users/slbi/EEworkspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/Hyuneum/resources/";
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request
			,@RequestParam(value="page",defaultValue="1") int currentPage
			,HttpSession session) {
		HashMap map = new HashMap();
		map.put("page",currentPage);
		map.put("startNumber", currentPage*10-10);
		ArrayList list = (ArrayList) estimateService.getEstimateList(map);
		request.setAttribute("data", list);
		request.setAttribute("pageSize", estimateService.getEstimateMax()/10+1);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("firstPage", (((int)((currentPage-1)/10))*10)+1);
		request.setAttribute("pageCount", ((currentPage-1)/10)+1);
		return "estimate/list";
	}
	
	@RequestMapping(value="/{no}", method= RequestMethod.GET)
	public String showList(HttpServletRequest request
			,@PathVariable int no
			,HttpSession session)
	{
		Estimate estimate = estimateService.getEstimate(no);
		request.setAttribute("estimate",estimate);
		return "estimate/detail";
	}
	
	@RequestMapping(value="/", method= RequestMethod.POST)
	public String insert(HttpServletRequest request
			,@ModelAttribute("estimate") Estimate estimate 
			,@RequestParam("file")MultipartFile file
			,HttpSession session) throws UnsupportedEncodingException
	{
		String path = estimate.getTel()+"/"+new SimpleDateFormat("yyyyMMddkkmmss").format(new Date())+"/";
		FileOutputStream fos = null;
		try 
		{
			File f = new File(TOMCAT_PATH+path+file.getOriginalFilename());
			if(! f.exists())
			{
				f.getParentFile().mkdirs();
			}
			byte fileData[] = file.getBytes();
			fos = new FileOutputStream(f);
			fos.write(fileData);
			estimate.setFileName(file.getOriginalFilename());
			path = path.replace("/", "_");
			estimate.setFilePath(path+file.getOriginalFilename());
			estimate.setFileSize(f.length());
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
		estimateService.postEstimate(estimate);
		return home(request,1,session);
	}
	
	@RequestMapping(value="/download/{filePath:.*}", method=RequestMethod.GET)
	public ModelAndView download(HttpServletRequest request
			,@PathVariable String filePath
			,HttpSession session)
	{
		return new ModelAndView("downloadView","filePath",filePath.replace("_", "/"));
	}
	
	@RequestMapping(value="/detail")
	public String showDetail(HttpServletRequest request
			,HttpSession session)
	{
		return "estimate/detail";
	}
	
	@RequestMapping(value="/write")
	public String showWrite(HttpServletRequest request
			,HttpSession session)
	{
		return "estimate/write";
	}
}
*/