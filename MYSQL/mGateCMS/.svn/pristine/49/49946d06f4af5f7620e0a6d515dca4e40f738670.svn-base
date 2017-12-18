<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<link rel="stylesheet" href="${ctx}/static/editor/wangEditor.min.css" />
<link rel="stylesheet" href="${ctx}/static/js/skin/WdatePicker.css" />
<script src="${ctx}/static/js/skin/WdatePicker.js"></script>
<script src="${ctx}/static/editor/wangEditor.min.js"></script>
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		submitHandler: function() {
			formSubmit($("#dataForm"),'/appVersion/list.do');
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
			<form id="dataForm" action="${ctx}/appVersion/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>App name</div>
					<div class="info-value">
						<input type="text" class="form-input" id="appName" name="appName"
							required placeholder="Enter App name" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Version no</div>
					<div class="info-value">
						<input type="text" class="form-input" id="versionNo" name="versionNo"
							required placeholder="Enter Version no" data-rule-number="true"/>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Download url</div>
					<div class="info-value">
						<input type="text" class="form-input" id="downloadUrl" name="downloadUrl"
							required placeholder="Enter Download url" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>App desc</div>
					<div class="info-value">
							<textarea  class="form-text" id="appDesc" name="appDesc" required placeholder="Enter App desc"></textarea>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Upgrade identifier</div>
					<div class="info-value">
						<mms:dict dictKey="UPGRADE_IDENTIFIER" ctrName="upgradeIdentifier" controlType="1"></mms:dict>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Upgrade type</div>
					<div class="info-value">
						<mms:dict dictKey="UPGRADE_TYPE" ctrName="upgradeType" controlType="1"></mms:dict>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Upgrade info</div>
					<div class="info-value">
							<textarea  class="form-text" id="upgradeInfo" name="upgradeInfo" required placeholder="Enter Upgrade info"></textarea>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Publish date</div>
					<div class="info-value">
							<input type="text" name="publishDate" style="width: 20%"
								class="form-input" required placeholder="Enter Publish date"
								onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
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
