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
				<mms:rightTag rightCode="delsystemService">
					<input type="submit" class="delone-btn" value="Delete"
						onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/systemService/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${systemService.id}">
					<div class="info-group">
						<div class="info-title">Business code</div>
						<div class="info-value">
							<span>${systemService.serviceCode}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Business name</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="serviceName"
								name="serviceName" required value="${systemService.serviceName}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Business description</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="serviceDesc"
								name="serviceDesc" required value="${systemService.serviceDesc}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Business type</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="dictId"
								name="dictId" required value="${systemService.dictId}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">listType</div>
						
						<div class="info-value">
						<mms:dict dictKey="LIST_TYPE" disabled="true" ctrName="certType"
								defaultValue="${systemService.listType}" controlType="1"></mms:dict>
						</div>
					</div>
					<%-- <div class="info-group">
						<div class="info-title">State</div>
						<div class="info-value">
							<span>${systemService.serviceState}</span>
						</div>
					</div> --%>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updsystemService">
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
	var updateUrl = ctx + "/systemService/update.do";
	var deleteUrl = ctx + "/systemService/delete.do";
</script>
</html>

