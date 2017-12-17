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
				<mms:rightTag rightCode="deloperateLog">
					<input type="submit" class="delone-btn" value="Delete"
						onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/operateLog/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${operateLog.id}">
					<div class="info-group">
						<div class="info-title">operateMethod</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="operateMethod"
								name="operateMethod" required
								value="${operateLog.operateMethod}" disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">refId</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="refId"
								name="refId" required value="${operateLog.refId}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">operateType</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="operateType"
								name="operateType" required value="${operateLog.operateType}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">operateDesc</div>
						<div class="info-value">
							<textarea class="form-text update" name="operateDesc" required
								disabled="disabled">${operateLog.operateDesc}</textarea>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<%-- <mms:rightTag rightCode="updoperateLog">
							<input type="button" class="common-btn modify" value="Modify">
						</mms:rightTag> --%>
					</div>
					<div class="btn-modify" style="display: none;">
						<input type="button" class="common-btn cancle" value="cancel">
						<input type="submit" class="common-btn" value="Submit">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
	var updateUrl = ctx + "/operateLog/update.do";
	var deleteUrl = ctx + "/operateLog/delete.do";
</script>
</html>

