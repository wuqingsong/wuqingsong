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
				formSubmit($("#dataForm"), '/systemDict/list.do'); 
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
			<form id="dataForm" action="${ctx}/systemDict/add.do" method="post">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Dict key
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="dictKey" name="dictKey"
								required placeholder="Enter Dict key"/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Dict value
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="dictValue"
								name="dictValue" required placeholder="Enter Dict value"/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Dict name
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="dictName"
								name="dictName" required placeholder="Enter Dict name"/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Dict description
						</div>
						<div class="info-value">
							<textarea  class="form-text" id="dictDesc" name="dictDesc" required placeholder="Enter Dict description"></textarea>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<input type="button" class="common-btn return" value="return"/>
					<input type="submit" class="common-btn" value="Submit"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
