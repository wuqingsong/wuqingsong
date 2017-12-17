<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Detail</title>
<script>
$(function(){
    //jquery.validate
	$("#updateForm").validate({
		submitHandler: function() {
			formSubmit($("#updateForm"),'reload');
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
				<mms:rightTag rightCode="delcodeConstrast">
				<input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;"> 
				</mms:rightTag>
			</div>
			<form action="${ctx}/codeConstrast/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${codeConstrast.id}">
			<div class="info-group">
					<div class="info-title">Ref system</div>
					<div class="info-value">
							<mms:dict dictKey="REF_SYSTEM" disabled="true" ctrName="refSystem" defaultValue="${codeConstrast.refSystem}" controlType="1"></mms:dict>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Error code</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="errorCode" name="errorCode" required
								value="${codeConstrast.errorCode}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Error info</div>
					<div class="info-value">
					<textarea  class="form-text update" name="errorInfo" disabled="disabled" required>${codeConstrast.errorInfo}</textarea>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Trans flag</div>
					<div class="info-value">
					<mms:dict dictKey="TRANS_FLAG" disabled="true" ctrName="transFlag" defaultValue="${codeConstrast.transFlag}" controlType="1"></mms:dict>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Trans info</div>
					<div class="info-value">
						<textarea  class="form-text update" name="transInfo" disabled="disabled" required>${codeConstrast.transInfo}</textarea>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Cps error code</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="cpsErrorCode" name="cpsErrorCode" required
								value="${codeConstrast.cpsErrorCode}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Cps error info</div>
					<div class="info-value">
					<textarea  class="form-text update" name="cpsErrorInfo" disabled="disabled" required>${codeConstrast.cpsErrorInfo}</textarea>
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updcodeConstrast">
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
	var updateUrl = ctx + "/codeConstrast/update.do";
	var deleteUrl = ctx + "/codeConstrast/delete.do";
</script>
</html>

