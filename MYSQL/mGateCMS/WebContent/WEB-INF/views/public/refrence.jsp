<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<c:set var="ctx" value="<%=basePath%>"></c:set>
<script type="text/javascript">
	//公共js参数
	var ctx = "${ctx}";//项目路径
	var sucCode = 10000;//成功返回码
</script>
