<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>

<link href="${ctx}/static/ueditor/themes/default/css/umeditor.min.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/static/ueditor/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.min.js"></script>
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
				<!-- <input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;">  -->
			</div>
			<form action="${ctx}/serviceAgreement/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${serviceAgreement.id}">
			<div class="info-group">
					<div class="info-title">Agreement name</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="agreementName" name="agreementName" required
								value="${serviceAgreement.agreementName}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
						<div class="info-title">Content</div>
						<div class="info-value" style="width: 75%;" >
						<div class="desc" style="width: 70%">
							<textarea id="contentUrl"  style="height: 200px" readonly="readonly" class="easyui-editor" placeholder="Please enter content" name="contentUrl">${serviceAgreement.contentUrl}</textarea>
						</div>
						</div>
					</div>
			<div class="info-group">
					<div class="info-title">Agreement desc</div>
					<div class="info-value">
						<textarea class="form-text update" name="agreementDesc"
									required disabled="disabled" >${serviceAgreement.agreementDesc}</textarea>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Ref type</div>
					<div class="info-value">
					<mms:dict dictKey="REF_TYPE" defaultValue="${serviceAgreement.refType}" disabled="true" ctrName="refType" controlType="1"></mms:dict>
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updAgreement">
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
	var updateUrl = ctx + "/serviceAgreement/update.do";
	var deleteUrl = ctx + "/serviceAgreement/delete.do";
</script>
</html>

