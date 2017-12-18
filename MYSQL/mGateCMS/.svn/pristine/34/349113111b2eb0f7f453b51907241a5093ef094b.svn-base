<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>SystemDict</title>
<script type="text/javascript">
	var listUrl = ctx + "/system/initialize.do";
	function refresh() {
		confirmMsg("Are you sure you want to refresh the cache?", function() {
			$.ajax({
				url : listUrl,
				type : "POST",
				dataType : "json",
				data : {},
				async : false,
				success : function(data) {
					alertMsg(data.message);
				}
			});
		});
	}
</script>
<style type="text/css">
#div1 {
	margin: 0 auto;
	padding-top: 200px;
}
</style>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp" %>
			<div class="detail-panel" id="detail-panel" style="text-align: center;">
					<input type="submit" class="delone-btn" value="Refresh cache"
						style=" width: 250px;margin-top: 200px;" onclick="refresh()">
			</div>
		</div>
	</div>
</body>
</html>
