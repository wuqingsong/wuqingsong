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
			formSubmit($("#dataForm"),'/feedback/list.do');
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
			<form id="dataForm" action="${ctx}/feedback/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>Parent id</div>
					<div class="info-value">
						<input type="text" class="form-input" id="parentId" name="parentId"
							required placeholder="Enter Parent id" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Content</div>
					<div class="info-value">
						<input type="text" class="form-input" id="content" name="content"
							required placeholder="Enter Content" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Reply state</div>
					<div class="info-value">
						<input type="text" class="form-input" id="replyState" name="replyState"
							required placeholder="Enter Reply state" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Reply type</div>
					<div class="info-value">
						<input type="text" class="form-input" id="replyType" name="replyType"
							required placeholder="Enter replyType" />
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
