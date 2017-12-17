<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>

<link href="${ctx}/static/ueditor/themes/default/css/umeditor.min.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/static/ueditor/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.min.js"></script>
<head>
<title>Add</title>
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		submitHandler: function() {
			formSubmit($("#dataForm"),'/serviceAgreement/list.do');
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
			<form id="dataForm" action="${ctx}/serviceAgreement/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>Agreement name</div>
					<div class="info-value">
						<input type="text" class="form-input" id="agreementName" name="agreementName"
							required placeholder="Enter agreementName" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Content</div>
					<div class="info-value" style="width: 75%;">
							<div class="desc" style="width: 70%">
								<textarea id="contentUrl" style="height: 200px"
									class="easyui-editor"
									placeholder="Please enter content" name="contentUrl"></textarea>
							</div>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Agreement desc</div>
					<div class="info-value">
			<textarea required class="form-text" name="agreementDesc" placeholder="Enter role Agreement desc"></textarea>
							
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Ref type</div>
					<div class="info-value">
						<mms:dict dictKey="REF_TYPE" ctrName="refType" controlType="1"></mms:dict>
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
