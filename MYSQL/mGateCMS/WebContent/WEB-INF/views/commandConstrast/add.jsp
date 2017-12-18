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
			formSubmit($("#dataForm"),'/commandConstrast/list.do');
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
			<form id="dataForm" action="${ctx}/commandConstrast/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>Ref system</div>
					<div class="info-value">
		<mms:dict dictKey="REF_SYSTEM" ctrName="refSystem" controlType="1"></mms:dict>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Command id</div>
					<div class="info-value">
						<input type="text" class="form-input" id="commandId" name="commandId"
							required placeholder="Enter commandId" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Command info</div>
					<div class="info-value">
		<textarea  class="form-text" required name="commandInfo" placeholder="Enter Command info"></textarea>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Cps command id</div>
					<div class="info-value">
						<input type="text" class="form-input" id="cpsCommandId" name="cpsCommandId"
							required placeholder="Enter cpsCommandId" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Cps command info</div>
					<div class="info-value">
					<textarea  class="form-text" required name="cpsCommandInfo" placeholder="Enter Cps command info"></textarea>
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
