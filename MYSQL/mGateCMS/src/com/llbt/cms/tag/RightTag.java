package com.llbt.cms.tag;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.jstl.core.ConditionalTagSupport;

import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;

/**
 * 权限验证标签
 * 
 * @概述：
 * @author 陈建焜
 * @时间：2011-6-18 下午03:04:55
 */
public class RightTag extends ConditionalTagSupport {
	/**
     * 
     */
	private static final long serialVersionUID = 1L;
	// 权限码
	private String rightCode;
	private String rightType;
	private String returnType;

	/**
	 * 如果页面本标签内容不为空并且该页面权限码和权限系统定义的 权限码相同，那么页面将会显示该标签的内容，否则内容显示为空
	 */
	@Override
	protected boolean condition() throws JspTagException {
		HttpSession session = this.pageContext.getSession();
		// 获取登录用户信息
		User gateUser = getUser(session);
		if (gateUser == null) {
			return false;
		}
		if (gateUser.getUserType().equals(ReserveDist.USER_TYPE_SUPERMANAGER)) {
			// 如果是系统固化的超级管理员，则不进行权限校验。
			return true;
		}
		String codeString =(String) session.getAttribute(ReserveDist.USER_MENUS_MENUCODE_STRING);
		return codeString.contains("|" + rightCode + "|");
	}

	/**
	 * 获得权限系统的授权信息
	 * 
	 * @param session
	 */
	private User getUser(HttpSession session) {
		User authUser = (User) session
				.getAttribute(ReserveDist.USER_SESSION_INFO);
		return authUser;
	}

	public String getRightCode() {
		return rightCode;
	}

	public void setRightCode(String rightCode) {
		this.rightCode = rightCode;
	}

	public String getRightType() {
		return rightType;
	}

	public void setRightType(String rightType) {
		this.rightType = rightType;
	}

	public String getReturnType() {
		return returnType;
	}

	public void setReturnType(String returnType) {
		this.returnType = returnType;
	}

}
