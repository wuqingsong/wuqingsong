package com.llbt.cms.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;

public class BaseController {
	protected Logger logger = Logger.getLogger(getClass());

	protected User getLogonUser(HttpSession session) {
		return (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
	}

	protected User getLogonUser(HttpServletRequest request) {
		HttpSession session = request.getSession();
		return (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
	}

	protected String getLogonUserId(HttpSession session) {
		User user = (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
		if (user != null) {
			return user.getId();
		}
		return null;
	}
	
	protected String jsonConvert(Object object){
		Gson gson = new Gson();
		return gson.toJson(object).toString();
	}
}
