package com.llbt.cms.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.llbt.cms.bean.ResponseData;

public class UploadUtil {
	public static HttpServletRequest getRequest(){
		 RequestAttributes ra = RequestContextHolder.getRequestAttributes();
	        ServletRequestAttributes sra = (ServletRequestAttributes) ra;
	        HttpServletRequest request = sra.getRequest();
	        return request;
	}
	
	public static String uploadPhoto(MultipartFile file ) {
		
		 File targetFile=null;
	        String msg="";//返回存储路径
	        //int code=1;
	        String fileName=file.getOriginalFilename();//获取文件名加后缀
	        System.out.println("fileName="+fileName);
	        if(fileName!=null&&fileName!=""){  
	        	//遇到问题：不可以一次创建双文件夹，待解决
	        	//String returnUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/uploads/imgs/";//存储路径
	        	//String urlpath = request.getSession().getServletContext().getRealPath("uploads/imgs"); 
	        	String upload = "upload";
	        	String returnUrl = getRequest().getScheme() + "://" + getRequest().getServerName() + ":" + getRequest().getServerPort() + getRequest().getContextPath() +"/static/imgs/upload/";//存储路径
	        	String urlpath = getRequest().getSession().getServletContext().getRealPath("static/imgs/upload");
	        	File path = new File(urlpath);  
	           if (!path.exists()) {  
		            //创建目录  
	            	path.mkdir();  
		        } 
	            String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
	            fileName=new Date().getTime()+"_"+new Random().nextInt(1000)+fileF;//新的文件名

	            //先判断文件是否存在
	            SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");// 设置日期格式
	            String fileAdd = df.format(new Date());
	            File file1 =new File(path+"/"+fileAdd); 
	            //如果文件夹不存在则创建    
	            if(!file1 .exists()  && !file1 .isDirectory()){       
	                file1 .mkdir();  
	            }
	            targetFile = new File(file1, fileName);
//	          targetFile = new File(path, fileName);
	            try {
	                file.transferTo(targetFile);
//	              msg=returnUrl+fileName;
	                msg=returnUrl+fileAdd+"/"+fileName;
	             //   code=0;
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
	        System.out.println(msg);
	        //return responseData = ResponseData.createSuccessRes(code, msg);
	        return msg;
	}
}
