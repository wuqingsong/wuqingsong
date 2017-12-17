<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<%@ taglib uri="/WEB-INF/tld/mms.tld" prefix="mms"%>
<html>
<head>
<title>My Information</title>
<link href="${ctx }/static/uploadify/uploadify.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="${ctx }/static/uploadify/jquery.uploadify.min.js"></script>
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
				 <input
					type="submit" class="delone-btn" value="Change Password"
					onclick="location.href='${ctx}/system/updatePassword.do'" style="float: right;width: 180px">
			</div>
			<form action="${ctx}/system/updateMyInfo.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${user.id}">
					<div class="info-group">
						<div class="info-title">Real name</div>
						<div class="info-value">
							<input type="text" class="form-input update" name="realName"
								required value="${user.realName}" required disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator photo</div>
						<div class="info-value" id="userPhotoDiv"
							style="display: block; width: 80%;">
							<input type="file" name="uploadify" id="uploadify"
								style="display: none;" /> <input type="hidden" id="userPhoto"
								value="${user.userPhoto}" name="userPhoto">
							<c:if test="${!empty user.userPhoto}">
								<img style="margin-left: 0px;margin-top: 3px;"
									class="user-photo" src="${user.userPhoto}">
							</c:if>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator no</div>
						<div class="info-value">
							<span>${user.userNo}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator phone</div>
						<div class="info-value">
							<input type="text" class="form-input update" name="userPhone"
								required value="${user.userPhone}" required disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator email</div>
						<div class="info-value">
							<input type="text" class="form-input update" name="userEmail"
								required value="${user.userEmail}" required disabled="disabled"
								data-rule-email="true">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Cert type</div>
						<div class="info-value">
							<mms:dict dictKey="CERT_TYPE" ctrName="certType"
								dictValue="${user.certType}" controlType="2"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Cert No</div>
						<div class="info-value">
							<span>${user.certId}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Department</div>
						<div class="info-value">
							<span>${user.deptName}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Role</div>
						<div class="info-value">
							<span>${user.roleName}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Gender</div>
						<div class="info-value">
							<mms:dict dictKey="1" ctrName="userGender"
								dictValue="${user.userGender}" controlType="2"></mms:dict>
						</div>

					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn" onclick="javascript:location.href='${ctx}/index.do'" value="Homepage">
						<input type="button" class="common-btn modify" value="Modify">
					</div>
					<div class="btn-modify" style="display: none;">
						<input type="button" class="common-btn cancle" value="cancle">
						<input type="submit" class="common-btn" value="Submit">
					</div>
					
				</div>
			</form>
		</div>
	</div>
</body>
<script>
	var updateUrl = ctx + "/system/updateMyInfo.do";
</script>
</html>

