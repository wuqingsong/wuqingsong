<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Detail</title>
<link rel="stylesheet" href="${ctx}/static/editor/wangEditor.min.css" />
<link rel="stylesheet" href="${ctx}/static/js/skin/WdatePicker.css" />
<script src="${ctx}/static/js/skin/WdatePicker.js"></script>
<script src="${ctx}/static/editor/wangEditor.min.js"></script>

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
				<mms:rightTag rightCode="delNotice">
				 <input
					type="submit" class="delone-btn" value="Delete"
					onclick="deleteOne();" style="float: right;">
				</mms:rightTag>
			</div>
			<form action="${ctx}/notice/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${notice.id}">
					<div class="info-group">
						<div class="info-title">Title</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="title"
								name="title" required value="${notice.title}"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Content</div>
						<div class="info-value" style="width: 75%;" >
						<div class="desc" style="width: 70%">
							<textarea id="contentText"  style="height: 200px" readonly="readonly" class="easyui-editor" placeholder="Please enter notice content" name="contentText">${notice.contentText}</textarea>
						</div>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Start date</div>
						<div class="info-value">
							<input type="text" class="form-input update" id="startDate"
								name="startDate" required
								value="<fmt:formatDate value="${notice.startDate}"  pattern="yyyy-MM-dd HH:mm:ss" />"
								onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',maxDate:'#F{$dp.$D(\'endDate\')}'})"
								disabled="disabled">
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">State</div>
						<div class="info-value">
							<mms:dict dictKey="NOTICE_STATE" ctrName="noticeState" controlType="1" disabled="true" defaultValue="${notice.noticeState }"></mms:dict>
						</div>
					</div>
					<div class="info-bottom">
						<div class="btn-detail">
							<input type="button" class="common-btn return" value="return">
							<mms:rightTag rightCode="updNotice">
							<input type="button" class="common-btn modify" value="Modify">
							</mms:rightTag>
						</div> 
						<div class="btn-modify" style="display: none;">
							<input type="button" class="common-btn cancle" value="Cancel">
							<input type="submit" class="common-btn" value="Submit"> 
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
	var updateUrl = ctx + "/notice/update.do";
	var deleteUrl = ctx + "/notice/delete.do";
</script>
</html>

