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
				<mms:rightTag rightCode="delcommandConstrast">
				<input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;"> 
				</mms:rightTag>
			</div>
			<form action="${ctx}/commandConstrast/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${commandConstrast.id}">
			<div class="info-group">
					<div class="info-title">Ref system</div>
					<div class="info-value">
					<mms:dict dictKey="REF_SYSTEM" ctrName="refSystem" disabled="true" defaultValue="${commandConstrast.refSystem}" controlType="1"></mms:dict>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Command id</div>
					<div class="info-value">
						<span>${commandConstrast.commandId}</span>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Command info</div>
					<div class="info-value">
					<textarea  class="form-text update" name="commandInfo" disabled="disabled" required>${commandConstrast.commandInfo}</textarea>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Cps command id</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="cpsCommandId" name="cpsCommandId" required
								value="${commandConstrast.cpsCommandId}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Cps command info</div>
					<div class="info-value">
								<textarea  class="form-text update" name="cpsCommandInfo" disabled="disabled" required>${commandConstrast.cpsCommandInfo}</textarea>
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updcommandConstrast">
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
	var updateUrl = ctx + "/commandConstrast/update.do";
	var deleteUrl = ctx + "/commandConstrast/delete.do";
</script>
</html>

