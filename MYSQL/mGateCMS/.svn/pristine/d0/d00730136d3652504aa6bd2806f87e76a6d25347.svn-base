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
				<mms:rightTag rightCode="deltransactionLimit">
				<input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;"> 
				</mms:rightTag>
			</div>
			<form action="${ctx}/transactionLimit/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${transactionLimit.id}">
			<div class="info-group">
					<div class="info-title">serviceId</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="serviceId" name="serviceId" required
								value="${transactionLimit.serviceId}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">limitType</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="limitType" name="limitType" required
								value="${transactionLimit.limitType}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">limitAmount</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="limitAmount" name="limitAmount" required
								value="${transactionLimit.limitAmount}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">isDelete</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="isDelete" name="isDelete" required
								value="${transactionLimit.isDelete}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">currency</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="currency" name="currency" required
								value="${transactionLimit.currency}" disabled="disabled">
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updtransactionLimit">
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
	var updateUrl = ctx + "/transactionLimit/update.do";
	var deleteUrl = ctx + "/transactionLimit/delete.do";
</script>
</html>

