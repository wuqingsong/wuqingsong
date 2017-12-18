<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<link rel="stylesheet" href="${ctx}/static/js/skin/WdatePicker.css" />
<script src="${ctx}/static/js/skin/WdatePicker.js"></script>

<link href="${ctx}/static/ueditor/themes/default/css/umeditor.min.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/static/ueditor/third-party/template.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${ctx}/static/ueditor/umeditor.min.js"></script>

<script>
	$(function() {
		//jquery.validate
		$("#dataForm").validate({
			submitHandler : function() {
				formSubmit($("#dataForm"), '/notice/list.do');
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
			<form id="dataForm" action="${ctx}/notice/add.do" method="post">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Title
						</div>
						<div class="info-value">
							<input type="text" class="form-input" id="title" name="title"
								required placeholder="Enter Title" />
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Content
						</div>
						<div class="info-value" style="width: 75%;">
							<div class="desc" style="width: 70%">
								<textarea id="contentText" style="height: 200px"
									class="easyui-editor"
									placeholder="Please enter notice content" name="contentText"></textarea>
							</div>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">
							<em>* </em>Start date
						</div>
						<div class="info-value">
							<input type="text" name="startDate" id="startDate"
								class="form-input" required placeholder="Enter Start date"
								onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
						</div>
					</div>

					<div class="info-group">
						<div class="info-title">
							<em>* </em>State
						</div>
						<div class="info-value">
							<mms:dict dictKey="NOTICE_STATE" ctrName="noticeState" controlType="1"></mms:dict>
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
