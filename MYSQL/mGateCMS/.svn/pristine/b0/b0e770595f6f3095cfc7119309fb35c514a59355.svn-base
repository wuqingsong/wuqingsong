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
				<mms:rightTag rightCode="delRole">
				<input type="submit" class="delone-btn" value="Delete" onclick="deleteOne();"
						style="float: right;"> 
				</mms:rightTag>
			</div>
			<form action="${ctx}/role/update.do" id="updateForm" method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${role.id}">
					<div class="info-group">
						<div class="info-title">Role name</div>
						<div class="info-value">
							<input type="text" class="form-input update" name="roleName"
								value="${role.roleName}" disabled="disabled"
								required>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Role description</div>
						<div class="info-value">
							<textarea class="form-text update" name="roleDesc"
								disabled="disabled" required>${role.roleDesc}</textarea>
						</div>
					</div>
					<%-- <div class="info-group">
						<div class="info-title">Superior role</div>
						<div class="info-value">
							<span>${role.parentName}</span>
						</div>
					</div> --%>
					<div class="info-group">
						<div class="info-title">Authority config</div>
						<div class="info-value" id="menu-tree"></div>
					</div>
				</div>

				<div class="info-bottom">
					<div class="btn-detail">
						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="updRole">
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
<script type="text/javascript" src="${ctx}/static/js/rightTree.js"></script>
<script>
	var updateUrl = ctx + "/role/update.do";
	var deleteUrl = ctx + "/role/delete.do";
	var data = ${menus};
	var html = window.treeCheckbox.buildUI(
			$('<ul class="tree-checkbox-list">'), data);
	$('#menu-tree').html(html);
	window.treeCheckbox.init($('#menu-tree'),false);

</script>
</html>
