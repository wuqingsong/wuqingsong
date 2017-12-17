<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
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
	$("#dataForm").validate({
		submitHandler: function() {
			formSubmit($("#dataForm"),'/questionAnswer/list.do');
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
			<form id="dataForm" action="${ctx}/questionAnswer/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>Question title</div>
					<div class="info-value">
						<input type="text" class="form-input" id="title" name="title"
							required placeholder="Enter title" />
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Answer content</div>
					<div class="info-value" style="width: 75%">
					<div class="desc" style="width: 70%">
						<textarea id="answer" style="height: 200px"
									class="easyui-editor"
									placeholder="Please enter notice content" name="answer"></textarea>
					</div>
					</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Question description</div>
					<div class="info-value">
						<textarea required class="form-text" name="questionDesc" placeholder="Enter role Question desc"></textarea>
					</div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>Question type</div>
					<div class="info-value" >
					<mms:dict  dictKey="QUESTION_TYPE" ctrName="questionType" controlType="1"></mms:dict>
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
