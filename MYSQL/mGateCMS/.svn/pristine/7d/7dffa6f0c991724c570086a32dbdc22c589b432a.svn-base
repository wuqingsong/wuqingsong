package com.llbt.cms.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;

public class CookieUtils {
	/**
	 * 根据名字获取cookie
	 * 
	 * @param request
	 * @param name
	 *            （ cookie名字）
	 * @return Cookie
	 */
	public static String getCookieByName(HttpServletRequest request, String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(name)) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	/**
	 * 设置cookie
	 * 
	 * @param response
	 * @param name
	 *            （cookie名字）
	 * @param value
	 *            （cookie值）
	 * @param maxAge
	 *            （cookie生命周期 以秒为单位）
	 */
	public static void addCookie(HttpServletResponse response, String name,
			String value, int maxAge) {
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		if (maxAge > 0) {
			cookie.setMaxAge(maxAge);
		}
		response.addCookie(cookie);
	}

	public static void addCookie(HttpServletResponse response, String name,
			String value) {
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		cookie.setMaxAge(ReserveDist.COOKIE_EFFECTIVE_TIME);
		response.addCookie(cookie);
	}

	/**
	 * 删除cookie
	 * 
	 * @param request
	 * @param response
	 */
	public static void delCookies(HttpServletResponse response,
			String cookieName) {
		Cookie cookie = new Cookie(cookieName, null);
		cookie.setPath("/");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}

	public static void rememberUser(HttpServletResponse response, User user,
			String remFlag) {
		if ("1".equals(remFlag)) { // "1"表示用户勾选记住密码
			String cookieInfo = user.getId();
			addCookie(response, ReserveDist.USER_LOGIN_COOKIE_NAME,
					Base64.getBase64(cookieInfo));
		} else {
			delCookies(response, ReserveDist.USER_LOGIN_COOKIE_NAME);
		}
	}
}
