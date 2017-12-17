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
			<form action="${ctx}/systemParam/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${systemParam.id}">
			<div class="info-group">
					<div class="info-title">Param title</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="paramTitle" name="paramTitle" required
								value="${systemParam.paramTitle}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Param key</div>
					<div class="info-value">
					<span>${systemParam.paramKey}</span>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Param value</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="paramValue" name="paramValue" required
								value="${systemParam.paramValue}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Param desc</div>
					<div class="info-value">
								<textarea class="form-text update" name="paramDesc"
									required disabled="disabled" >${systemParam.paramDesc}</textarea>
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updSystemParam">
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
	var updateUrl = ctx + "/systemParam/update.do";
	var deleteUrl = ctx + "/systemParam/delete.do";
</script>
</html>

