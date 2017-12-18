<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Detail</title>
<link href="${ctx}/static/ueditor/themes/default/css/umeditor.min.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/static/ueditor/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.min.js"></script>
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
				<mms:rightTag rightCode="delQuestionAnswer">
				<input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;"> 
				</mms:rightTag>
			</div>
			<form action="${ctx}/questionAnswer/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${questionAnswer.id}">
			<div class="info-group">
					<div class="info-title">Question title</div>
					<div class="info-value">
						<input type="text" class="form-input update" id="title" name="title" required
								value="${questionAnswer.title}" disabled="disabled">
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Answer content</div>
					<div class="info-value" style="width: 75%">
					<div class="desc" style="width: 70%">
						<textarea id="answer" style="height: 200px"
									class="easyui-editor"
									placeholder="Please enter notice content" readonly="readonly" name="answer">${questionAnswer.answer}</textarea>
					</div>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Question description</div>
					<div class="info-value">
					<textarea class="form-text update" name="questionDesc"
									required disabled="disabled" >${questionAnswer.questionDesc}</textarea>
					</div>
				</div>
			<div class="info-group">
					<div class="info-title">Question type</div>
					<div class="info-value">
					<mms:dict  dictKey="QUESTION_TYPE" disabled="true" defaultValue="${questionAnswer.questionType}" ctrName="questionType" controlType="1"></mms:dict>
					</div>
				</div>
				</div>
				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updQuestionAnswer">
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
	var updateUrl = ctx + "/questionAnswer/update.do";
	var deleteUrl = ctx + "/questionAnswer/delete.do";
</script>
</html>

