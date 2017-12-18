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
			</div>
			<form action="${ctx}/department/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${department.id}">
					<div class="info-group">
						<div class="info-title">Superior department</div>
						<div class="info-value">
							<span>${department.parentName}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Department name</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="deptName"
								name="deptName" required value="${department.deptName}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Department code</div>
						<div class="info-value">
							<span>${department.deptCode}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Department description</div>
						<div class="info-value">
							<textarea class="form-text update" id="deptDesc" name="deptDesc"
								required disabled="disabled">${department.deptDesc}</textarea>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Dept state</div>
						<div class="info-value">
							<span> <mms:dict dictKey="DEPT_STATE" disabled="true"
									defaultValue="${department.deptState}" ctrName="deptState"
									controlType="1"></mms:dict>
							</span>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updDept">
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
	var updateUrl = ctx + "/department/update.do";
	var deleteUrl = ctx + "/department/delete.do";
</script>
</html>

