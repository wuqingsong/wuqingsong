package com.llbt.cms.interceptor;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.entity.OperateLog;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.OperateLogService;
import com.llbt.cms.util.MmsUtils;
import com.llbt.cms.util.PrimaryKeyUtils;

/**
 * 
 * @author JianNian Lin
 * @date 2017年6月6日
 * @description 日志记录拦截器
 */
public class LogInterceptor implements HandlerInterceptor {
	@Autowired
	private OperateLogService operateLogService;
	@Autowired
	private MenuCache menuCache;
	private static final String METHOD_FILTER_STRING = "getVeriCode|toLoginPage|doLogOut|init|operateLogList";

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception e)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
		if (user != null) {
			HandlerMethod method = (HandlerMethod) handler;
			String methodName = method.getMethod().getName();
			if (!(METHOD_FILTER_STRING.indexOf(methodName) > -1)
					&& !methodName.startsWith("to")
					&& !methodName.startsWith("validate")) {
				String contextPath = request.getContextPath();
				contextPath = contextPath.equals("/") ? "" : contextPath;

				String menuName = menuCache.getMenuNameByUrl(request
						.getRequestURI().replace(contextPath, ""));
				String prefixMethodName = menuName == "" ? methodName
						: menuName;
				OperateLog log = new OperateLog();
				log.setId(PrimaryKeyUtils.getUUID());
				log.setCreateDate(new Date());
				log.setCreateBy(user.getId());
				log.setOperateMethod(prefixMethodName);
				String type = methodName.startsWith("upd")
						|| methodName.startsWith("add")
						|| methodName.startsWith("del") ? "1" : "0";
				log.setOperateType(type);
				String id = request.getParameter("id");
				log.setRefId(StringUtils.isEmpty(id) ? user.getId() : id);
				String desc =null;
				if (menuName.equals("doLogin")) {
					desc="User login";
				}else {
					desc= MmsUtils.getParamsDescFromRequest(request,
							prefixMethodName);
				}
				log.setOperateDesc(desc);
				operateLogService.insert(log);
			}
		}

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse arg1, Object handler) throws Exception {
		HandlerMethod method = (HandlerMethod) handler;
		String methodName = method.getMethod().getName();
		if (methodName.equals("doLogOut")) {
			HttpSession session = request.getSession();
			User user = (User) session
					.getAttribute(ReserveDist.USER_SESSION_INFO);
			OperateLog log = new OperateLog();
			log.setId(PrimaryKeyUtils.getUUID());
			log.setCreateDate(new Date());
			log.setCreateBy(user.getId());
			log.setOperateMethod(methodName);
			log.setOperateType("0");
			log.setRefId(user.getId());
			log.setOperateDesc("User log out");
			operateLogService.insert(log);
		}

		return true;
	}

}
