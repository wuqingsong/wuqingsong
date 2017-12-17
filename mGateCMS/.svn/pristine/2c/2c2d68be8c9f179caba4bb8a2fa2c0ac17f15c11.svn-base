package com.llbt.cms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.WebContentGenerator;

public class SafeInterceptor implements HandlerInterceptor  {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse arg1, Object arg2) throws Exception {
		
		String method=request.getMethod().trim();
		
		
		if (!method.toUpperCase().equals(WebContentGenerator.METHOD_POST)) {
			// 忽略非POST请求
			
		} else {
			// 验证CSRF签名
			// if (passed)
			// return true;
			// else {
			// response.sendError(HttpServletResponse.SC_BAD_REQUEST,
			// "Bad or missing CSRF value");
			// return false;
			// }
		}
		return true;
	}

	
}
