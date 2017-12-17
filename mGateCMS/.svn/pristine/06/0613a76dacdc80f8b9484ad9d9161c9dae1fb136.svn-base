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
			formSubmit($("#dataForm"),'/operateLog/list.do');
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
			<form id="dataForm" action="${ctx}/operateLog/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>operateMethod</div>
					<div class="info-value">
						<input type="text" class="form-input" id="operateMethod" name="operateMethod"
							required placeholder="Enter operateMethod" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>refId</div>
					<div class="info-value">
						<input type="text" class="form-input" id="refId" name="refId"
							required placeholder="Enter refId" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>operateType</div>
					<div class="info-value">
						<input type="text" class="form-input" id="operateType" name="operateType"
							required placeholder="Enter operateType" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>operateDesc</div>
					<div class="info-value">
						<input type="text" class="form-input" id="operateDesc" name="operateDesc"
							required placeholder="Enter operateDesc" />
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
