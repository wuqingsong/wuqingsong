<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<%@ taglib uri="/WEB-INF/tld/mms.tld" prefix="mms"%>
<html>
<head>
<title>Detail</title>
<link href="${ctx }/static/uploadify/uploadify.css" rel="stylesheet"
	type="text/css" />
	<link href="${ctx }/static/css/userDetail.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="${ctx }/static/uploadify/jquery.uploadify.min.js"></script>
 	<script type="text/javascript"
	src="${ctx }/static/js/js/userDetail.js"></script>
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
				<mms:rightTag rightCode="delUser">
					<input type="submit" class="delone-btn" value="Delete"
						onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/user/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${user.id}">
					<div class="info-group" style="position: relative;">
						<div class="info-title">State</div>
						<div class="info-value" >
							<span><mms:dict dictKey="USER_STATE"
									dictValue="${user.userState}" controlType="2"></mms:dict></span>
							<mms:rightTag rightCode="updUser">
								<c:if test="${user.userState == 0}">
									<a href="#" style="position: absolute;right: 20px;top:0px;"
										class="info-btn paust"
										onclick="updState('1','Are you sure you want to disable this user?')">Pause</a>
								</c:if>
								<c:if test="${user.userState == 1}">
									<a href="#" style="position: absolute;right: 20px;top:0px;"
										class="info-btn paust"
										onclick="updState('0','Are you sure you want to enable this user?')">Use</a>
								</c:if>
							</mms:rightTag>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator name</div>
						<div class="info-value">
							<span>${user.userName}</span>
						</div>
					</div>
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
							<!-- <input type="file" name="uploadify" id="uploadify"style="display: none;" />
							 <input type="hidden" id="userPhoto" value="${user.userPhoto}" name="userPhoto"> -->
								<input type="hidden" id="userPhoto" name="userPhoto"/>
							<input id="file-input" type="file" onchange="setImg(this);" required placeholder="Enter imgName"/>
			  	 			<input class="input-btn" style="display: none;" type="button" value="choose" name="logoFile" id="logoFile" onClick="aa();" />
							<div id="imgDiv" ><img id="thumburlShow" style="margin-top: 2px;"  class="user-photos" src=""/></div>
							<c:if test="${!empty user.userPhoto}">
								<img style="margin-left: -180px;margin-top: 13px;"
									class="user-photo" id="user-Photo" src="${ctx}${user.userPhoto}">
							</c:if>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator no</div>
						<div class="info-value">
							<input type="text" class="form-input update" name="userNo"
								required value="${user.userNo}" required disabled="disabled">
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
							<mms:dict dictKey="CERT_TYPE" disabled="true" ctrName="certType"
								defaultValue="${user.certType}" controlType="1"></mms:dict>
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
								defaultValue="${user.userGender}" controlType="1"
								disabled="true">
							</mms:dict>
						</div>

					</div>
					<div class="info-group">
						<div class="info-title">Operator remark</div>
						<div class="info-value">
							<textarea class="form-text update" name="userRemark" required
								disabled="disabled">${user.userRemark}</textarea>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updUser">
							<input type="button" class="common-btn modify" onclick="test();" value="Modify">
							<input type="button" class="common-btn" value="initPassword"
						onclick="InitializePassword();">
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
	var updateUrl = ctx + "/user/update.do";
	var deleteUrl = ctx + "/user/delete.do";
</script>
</html>

