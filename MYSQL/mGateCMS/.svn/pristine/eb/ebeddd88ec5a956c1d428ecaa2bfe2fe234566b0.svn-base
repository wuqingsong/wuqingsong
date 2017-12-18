<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<%@ taglib uri="/WEB-INF/tld/mms.tld" prefix="mms"%> 
<html>
<head>
<title>Detail</title>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
			var userPassword = $("#userPassword").val();
			var xinPassword1 = $("#xinPassword").val();
			var xinPassword2 = $("#xinPwd").val();
			if(userPassword==""){
				alertMsg("原密码不能为空");
			}else if(xinPassword1==""){
				alertMsg("新密码不能为空");
			}else if(userPassword==xinPassword1){
				alertMsg("新密码不能与原密码相同");
			}
			else if(xinPassword2==""){
				alertMsg("确认密码不能为空");
			}else if(xinPassword1!=xinPassword2){
				alertMsg("两次输入的密码不正确");
			}else{
								var xinPassword3 = $("#xinPwd").val();
								 $.ajax({
										type : "POST",
										url : updatePassword,
										data : {
											userPassword:userPassword,
											newPassword:xinPassword3
										},
										dataType : "json",
										success : function(data) {
											if(data.stateCode==sucCode){
												location.href="${ctx}/system/myInfo.do";
											}else{
												alertMsg(data.message);
											}
										}
				}); 
							
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
			<div class="info-content">
				<div class="info-group">
					<div class="info-title">Your password</div>
					<input type="password" class="form-input" id="userPassword" name="userPassword"
						 />
				</div>
				<div class="info-group">
					<div class="info-title">New password</div>
					<input type=""password"" class="form-input" id="xinPassword" name="userPassword"
						 />
				</div>
				<div class="info-group">
				<div class="info-title">Confirm password</div>
					<input type=""password"" class="form-input" id="xinPwd" name="userPassword"
						 />
				</div>
				</div>
				<div class="info-bottom">
						<div class="btn-detail">
							<input type="button" class="common-btn" onclick="location.href='${ctx}/system/myInfo.do'" value="return">
							<input type="button" id="btn" class="common-btn" value="Submit">
						</div> 
				</div>
		</div>
	</div>
</body>
<script>
	var updatePassword = ctx + "/system/updatePassword.do";
</script>
</html>

