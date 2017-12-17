package com.llbt.cms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.util.MmsUtils;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月13日
 * @description 权限拦截器
 */
public class AuthInterceptor implements HandlerInterceptor {

	@Autowired
	private MenuCache menuCache;

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		HttpSession session = request.getSession();
		String contextPath=request.getContextPath();
		contextPath=contextPath.equals("/")?"":contextPath;
		
		String url = request.getRequestURI().replace(contextPath, "");

		User user = (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
		if (user.getUserType().equals(ReserveDist.USER_TYPE_SUPERMANAGER)) {
			return true;
		}
		if (user!=null&&menuCache.validateUserAuth(user.getId(), url)) {
			return true;
		}
		response.sendRedirect(MmsUtils.getServerPath(request)+"/error.jsp");
		return false;
	}

}
