<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		submitHandler: function() {
			formSubmit($("#dataForm"),'/systemParam/list.do');
		}
	});
		
});
</script>
</head>
<body>
<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<div class="info-head">
				<img class="info-icon" src="${ctx}/static/imgs/add-icon.png" />
			</div>
			<form id="dataForm" action="${ctx}/systemParam/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>Param title</div>
					<div class="info-value">
						<input type="text" class="form-input" id="paramTitle" name="paramTitle"
							required placeholder="Enter Param title">
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Param key</div>
					<div class="info-value">
						<input type="text" class="form-input" id="paramKey" name="paramKey"
							required placeholder="Enter Param key">
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Param value</div>
					<div class="info-value">
						<input type="text" class="form-input" id="paramValue" name="paramValue"
							required placeholder="Enter Param value">
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Param desc</div>
					<div class="info-value">
							<textarea  class="form-text" id="paramDesc" name="paramDesc" required placeholder="Enter Param desc"></textarea>
					</div>
			</div>
				</div>
				<div class="info-bottom">
					<input type="button" class="common-btn return" value="return">
					<input type="submit" class="common-btn" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
