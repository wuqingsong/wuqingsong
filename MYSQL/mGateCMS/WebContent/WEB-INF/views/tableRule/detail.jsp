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
				<mms:rightTag rightCode="deltableRule">
					<input type="submit" class="delone-btn" value="Delete"
						onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/tableRule/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${tableRule.id}">
					<div class="info-group">
						<div class="info-title">Table name</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="tableName"
								name="tableName" required value="${tableRule.tableName}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Rule</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="rule"
								name="rule" required value="${tableRule.rule}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Description</div>
						<div class="info-value">
							<textarea class="form-text update" id="ruleDesc" name="ruleDesc"
								required disabled="disabled">${tableRule.ruleDesc}</textarea>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updtableRule">
							<input type="button" class="common-btn modify" value="Modify">
						</mms:rightTag>
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
	var updateUrl = ctx + "/tableRule/update.do";
	var deleteUrl = ctx + "/tableRule/delete.do";
</script>
</html>

