<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/mms.tld" prefix="mms"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<c:set var="ctx" value="<%=basePath%>"></c:set>
<c:set var="lacale" value="<%=request.getLocale()%>"></c:set>
<script type="text/javascript">
	//公共js参数
	var ctx = "${ctx}";//项目路径
	var sucCode = 10000;//成功返回码
	var locale = "${lacale}";//国际化浏览器语言
</script>
<link rel="stylesheet" href="${ctx}/static/css/common.css">
<script src="${ctx}/static/js/framework/jquery-1.11.2.min.js"></script>
<script src="${ctx}/static/js/framework/jquery.validate.js"></script>
<script src="${ctx}/static/i18n/jquery.i18n.properties-1.0.9.js"></script>
<script src="${ctx}/static/js/validateConfig.js"></script>
<script src="${ctx}/static/js/common.js"></script>
<script src="${ctx}/static/js/tips.js"></script>
<script src="${ctx}/static/i18n/i18n.js"></script>








