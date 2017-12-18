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
				<mms:rightTag rightCode="delSystemDict">
					<input type="submit" class="delone-btn" value="Delete"
						onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/systemDict/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${systemDict.id}">
					<div class="info-group">
						<div class="info-title">Dict key</div>
						<div class="info-value">
							<%-- <input type="text" class="form-input update" id="dictKey"
								name="dictKey" required value="${systemDict.dictKey}"
								disabled="disabled"> --%>
							<span>${systemDict.dictKey}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Dict value</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="dictValue"
								name="dictValue" required value="${systemDict.dictValue}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Dict name</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="dictName"
								name="dictName" required value="${systemDict.dictName}"
								disabled="disabled">
						</div>
					</div>
					<%-- <div class="info-group">
						<div class="info-title">Dict seq</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="dictSeq"
								name="dictSeq" required value="${systemDict.dictSeq}"
								disabled="disabled" data-rule-digits="true">
						</div>
					</div> --%>
					<div class="info-group">
						<div class="info-title">Dict description</div>
						<div class="info-value">
							<textarea class="form-text update" id="dictDesc" name="dictDesc"
								required disabled="disabled">${systemDict.dictDesc}</textarea>
						</div>
					</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updSystemDict">
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
	var updateUrl = ctx + "/systemDict/update.do";
	var deleteUrl = ctx + "/systemDict/delete.do";
</script>
</html>

