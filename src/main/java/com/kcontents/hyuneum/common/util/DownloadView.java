package com.kcontents.hyuneum.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView
{
//	public static final String TOMCAT_PATH = "C:/Users/slbi/EEworkspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/Hyuneum/resources/";
	public static final String TOMCAT_PATH = "/usr/share/tomcat6/webapps/Hyuneum/resources/images/";
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		File file = new File(TOMCAT_PATH+model.get("filePath"));
		response.setContentType(getContentType());
		response.setContentLength((int)file.length());
		
		String userAgent = request.getHeader("User-Agent");
		boolean ie = userAgent.indexOf("MSIE") > -1;
		
		String fileName = null;
//		if(ie)
//		{
//			fileName = URLEncoder.encode(file.getName(),"UTF-8");
//		}
//		else
//		{
			fileName = new String(file.getName().getBytes("UTF-8"));
//		}
		
		response.setHeader("Content-Disposition", "attachment; filename=\""+fileName+"\";");
		response.setHeader("Content-Transfer-Encoding","binary");
		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;
		try
		{
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if(fis != null)
			{
				try
				{
					fis.close();
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
			}
		}//try catch end
		out.flush();
	}

}
