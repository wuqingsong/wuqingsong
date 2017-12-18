package com.llbt.cms.i18n;

import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class Ii8n {
	
	public static String getErrorText(String errorTag){
       String basename = "com.llbt.cms.i18n.myproperties.myproperties";
       ResourceBundle rb=ResourceBundle.getBundle(basename,getRequest().getLocale());
		if(!rb.containsKey(errorTag)){
			return errorTag;
		}
		String ret = rb.getString(errorTag);
		    return ret;
	}
	
	public static HttpServletRequest getRequest(){
		 RequestAttributes ra = RequestContextHolder.getRequestAttributes();
	        ServletRequestAttributes sra = (ServletRequestAttributes) ra;
	        HttpServletRequest request = sra.getRequest();
	        return request;
	}

	/*public static void main(String[] args) {
        System.out.println(getErrorText("Verify code error!"));
 	}*/

}
