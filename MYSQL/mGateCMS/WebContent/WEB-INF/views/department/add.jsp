<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<script>
	$(function() {
		//jquery.validate
		$("#dataForm").validate({
			submitHandler : function() {
				formSubmit($("#dataForm"), '/department/list.do');
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
			<form action="${ctx}/department/add.do" method="post" id="dataForm">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title"><em>* </em>Superior department</div>
						<div class="info-value">
							<select class="form-select" name="parentId" id="parentId"
								required>
								<option value="">Select a Superior department</option>
								<option value="0">Top department</option>
								<c:forEach items="${departmentDept}" var="departmentDept">
									<option value="${departmentDept.id }">${departmentDept.deptName }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Department name</div>
						<div class="info-value">
							<input type="text" class="form-input" id="deptName"
								name="deptName" placeholder="Enter Dept name" required
								data-rule-norepeat="true" data-msg-norepeat="Dept name already exists!" data-url="${ctx}/department/validate.do"
								 />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Department code</div>
						<div class="info-value">
							<input type="text" class="form-input" id="deptCode"
								name="deptCode" required placeholder="Enter Dept code" />
						</div>
					</div>
					
					<div class="info-group">
						<div class="info-title"><em>* </em>Department description</div>
						<div class="info-value">
							<textarea class="form-text" id="deptDesc" name="deptDesc"
								required placeholder="Enter Dept desc"></textarea>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Department state</div>
						<div class="info-value">
							<mms:dict dictKey="DEPT_STATE" ctrName="deptState" controlType="1"></mms:dict>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<input type="button" class="common-btn return" value="return" /> <input
						type="submit" class="common-btn" value="Submit" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>
