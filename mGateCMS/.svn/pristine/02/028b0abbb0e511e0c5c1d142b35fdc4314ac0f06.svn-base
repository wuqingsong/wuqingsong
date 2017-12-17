<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		onkeyup: false,
		submitHandler: function() {
			formSubmit($("#dataForm"),'/role/list.do');
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
				<img class="info-icon" src="${ctx }/static/imgs/add-icon.png" />
			</div>
			<form action="${ctx}/role/add.do" method="post" id="dataForm">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title"><em>* </em>Role name</div>
						<div class="info-value">
							<input type="text" class="form-input" name="roleName"
								placeholder="Enter Role name" required
								data-rule-norepeat="true" data-msg-norepeat="Role name already exists!" data-url="${ctx}/role/validate.do"
								>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Role description</div>
						<div class="info-value">
							<textarea  class="form-text" name="roleDesc" placeholder="Enter Role description"></textarea>
						</div>
					</div>
					<%-- <div class="info-group">
						<div class="info-title"><em>* </em>Superior role</div>
						<div class="info-value">
							<select class="form-select" name="parentId" id="parentRole" required >
								<option value="">Choose a Superior rol</option>
								<option value="0">Top role</option>
								<c:forEach items="${parentRoles}" var="parentRole">
									<option value="${parentRole.id }">${parentRole.roleName }
									</option>
								</c:forEach>
							</select>
						</div>
					</div> --%>
					<div class="info-group">
						<div class="info-title">Authority config</div>
						<div class="info-value" id="menu-tree">
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
<script type="text/javascript" src="${ctx}/static/js/rightTree.js"></script>
<script>
	$(function(){
		
		var html = window.treeCheckbox.buildUI($('<ul class="tree-checkbox-list">'), ${menus});
		$('#menu-tree').html(html);
		window.treeCheckbox.init($('#menu-tree'),true);
		
		/* $("#parentRole").on("change",function(){
			var roleId=$(this).val();
			if(roleId==""){
				$('#menu-tree').html("<span>Please Choose a Superior role</span>");
				return;
			}
			
			$.ajax({
				type:"post",
				url:ctx+"/role/authTree.do",
				data:{"roleId":roleId},
				dataType : "json",
				success:function(data){
					var html = window.treeCheckbox.buildUI(
							$('<ul class="tree-checkbox-list">'), data);
					$('#menu-tree').html(html);
					window.treeCheckbox.init($('#menu-tree'));
				}
			});
		}); */
	});
	
//	var data = [];
</script>
</html>
