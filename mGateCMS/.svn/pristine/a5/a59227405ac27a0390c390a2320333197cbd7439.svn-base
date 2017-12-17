<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Detail</title>
<script>
	$(function() {
		//jquery.validate
		$("#updateForm").validate({
			submitHandler : function() {
				formSubmit($("#updateForm"), 'reload');
			}
		});

	});
</script>
</head>
<body onunload="initUpdate();">
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<div class="info-head">
				<img class="info-icon" src="${ctx }/static/imgs/info-icon.png" /> 
				<mms:rightTag rightCode="delApp">
				<input
					type="submit" class="delone-btn" value="Delete"
					onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/appVersion/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${appVersion.id}">
					<div class="info-group">
						<div class="info-title">App name</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="appName"
								name="appName" required value="${appVersion.appName}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Version no</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="versionNo"
								name="versionNo" required value="${appVersion.versionNo}"
								disabled="disabled" data-rule-number="true">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Download url</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="downloadUrl"
								name="downloadUrl" required value="${appVersion.downloadUrl}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">App desc</div>
						<div class="info-value">
							<textarea class="form-text update" id="appDesc" name="appDesc"
								required disabled="disabled">${appVersion.appDesc}</textarea>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Upgrade identifier</div>
						<div class="info-value">
							<mms:dict dictKey="UPGRADE_IDENTIFIER" disabled="true"
								defaultValue="${appVersion.upgradeIdentifier}"
								ctrName="upgradeIdentifier" controlType="1"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Upgrade type</div>
						<div class="info-value">
							<mms:dict dictKey="UPGRADE_TYPE" disabled="true"
								defaultValue="${appVersion.upgradeType}" ctrName="upgradeType"
								controlType="1"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Upgrade info</div>
						<div class="info-value">
							<textarea class="form-text update" id="upgradeInfo"
								name="upgradeInfo" required disabled="disabled">${appVersion.upgradeInfo}</textarea>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Publish date</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="publishDate"
								name="publishDate" required
								value="<fmt:formatDate value="${appVersion.publishDate}"  pattern="yyyy-MM-dd HH:mm:ss" />"
								onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
								disabled="disabled">
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updApp">
						<input type="button" class="common-btn modify" value="Modify">
						</mms:rightTag>
					</div> 
					<div class="btn-modify" style="display: none;">
						<input type="button" class="common-btn cancle" value="Cancel">
						<input type="submit" class="common-btn" value="Submit"> 
					</div>
				</div>

			</form>
		</div>
	</div>
</body>
<script>
	var updateUrl = ctx + "/appVersion/update.do";
	var deleteUrl = ctx + "/appVersion/delete.do";
</script>
</html>

