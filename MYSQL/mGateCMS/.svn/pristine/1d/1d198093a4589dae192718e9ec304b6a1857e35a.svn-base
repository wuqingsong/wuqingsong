<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<script>
	$(function() {
		//jquery.validate
		$("#dataForm").validate({
			submitHandler : function() {
				formSubmit($("#dataForm"), '/systemService/list.do');
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
			<form id="dataForm" action="${ctx}/systemService/add.do"
				method="post">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Business code
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="serviceCode"
								name="serviceCode" required placeholder="Enter Business code" />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Business name
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="serviceName"
								name="serviceName" required placeholder="Enter Business name" />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Business description
						</div>
						<div class="info-value">
							<textarea  class="form-text" id="serviceDesc" name="serviceDesc" required placeholder="Enter Business description"></textarea>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Business type
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="dictId" name="dictId"
								required placeholder="Enter Business type" />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>listType
						</div>
						<div class="info-value">
						<mms:dict dictKey="LIST_TYPE" ctrName="listType" controlType="1"></mms:dict>
						</div>
					</div>
					<!-- <div class="info-group">
						<div class="info-title">
							<em>* </em>State
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="serviceState"
								name="serviceState" required placeholder="Enter serviceState" />
						</div>
					</div> -->
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
