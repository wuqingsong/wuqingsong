<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<script>
	$(function() {
		//jquery.validate
		$("#dataForm").validate(
				{
					submitHandler : function() {
						formSubmit($("#dataForm"),
								'/transactionLimit/list.do?serviceId='
										+ $("#serviceId").val());
					}
				});

	});
</script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<div class="info-head">
				<img class="info-icon" src="${ctx}/static/imgs/add-icon.png" />
			</div>
			<form id="dataForm" action="${ctx}/transactionLimit/add.do"
				method="post">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Business
						</div>
						<div class="info-value">
							<span>${business.serviceName }</span> <input type="hidden"
								id="serviceId" name="serviceId" value="${business.id }">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>limitType
						</div>
						<div class="info-value">
							<mms:dict dictKey="LIMIT_TYPE" ctrName="limitType"
								controlType="1"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Limit amount
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="limitAmount"
								name="limitAmount" required data-rule-amount="true"
								data-msg-amount="This field must be 2 decimal digits!"
								placeholder="Enter Limit amount" />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Currency
						</div>
						<div class="info-value">
							<mms:dict dictKey="CURRENCY" ctrName="currency" controlType="1"></mms:dict>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<input type="button" class="common-btn return" value="return">
					<input type="submit" class="common-btn" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
