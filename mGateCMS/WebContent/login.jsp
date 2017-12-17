<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>

<title>Log in</title>
<link rel="stylesheet" href="${ctx}/static/css/login.css">
<script type="text/javascript" src="${ctx}/static/js/login.js"></script>
</head>

<body>
	<div class="bg-holder">
		<img src="${ctx}/static/imgs/bg.png" />
	</div>
	<div>
		<img class="logo-icon" src="static/imgs/logo.png" />
		<div class="title">
			<span>Mobile Money app Management System</span>
		</div>

		<div class="login-panel">
			<div class="login-title">
				<span> Please Log in </span>
			</div>
			<div class="login-form">
				<form style="padding-top: 25px;" id="loginFrom"
					action="${ctx}/login.do" method="post"
					onsubmit=" return doLogin();">
					<div class="form-line">
						<i class="in-icon acc-icon"></i> <input placeholder="Account" 
							class="form-in" type="text" name="userName" id="userName" />
					</div>
					<div class="form-line" style="position: relative;">
						<i class="in-icon pwd-icon"></i> <input placeholder="Password"
							class="form-in" type="password" name="userPassword"
							id="userPassword" />
					</div>
					<div class="form-line">
						<i class="in-icon code-icon"></i> <input placeholder="Code"
							style="width: 120px;float: left;margin-left: 12%;"
							class="form-in" type="text" name="veriCode" id="code" /> <img
							id="code-img" class="code-img" />
					</div>
					<div class="form-line">
						<div  class="remenber-wrapper" style="margin-left: -130px;">
							<div id="rem-icon"> <input
								type="checkbox" style="display: none;" checked id="remember"
								name="remFlag" value="1" /> <i id="ck-icon" class="rem-check"></i>
							</div> <label for="remember"
								style="color: #8E8E8E;margin-left: 35px;-webkit-user-select: none;user-select: none;">Remember
								me</label>
						</div>
					</div>
					<div class="form-line">
						<input class="login-btn" type="submit" value="Log in" />
					</div>
					<div id="msg" class="form-line" style="color:red;font-weight: bold;padding: 0px 20px;"></div>
				</form>

			</div>
		</div>

		<div class="copyright">
			<span> Copyright @2017 huawei.All Rights Reserved </span>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function(){
		var userName = $("#userName").attr('placeholder');
		$("#userName").attr('placeholder',$.i18n.prop(userName));  
		/* var userName = $(".form-in").attr('placeholder');
		$(".form-in").attr('placeholder',$.i18n.prop(userName));  */
});

	function doLogin() {
		var userName = $("#userName").val();
		var userPassword = $("#userPassword").val();
		var code = $("#code").val();
		if (userName.length <= 0) {
			alertMsg($.i18n.prop("panduanusername"));
			return false;
		}
		if (userPassword.length <= 0) {
			alertMsg("Please enter your password!");
			return false;
		}
		if (code.length <= 0) {
			alertMsg("Please enter code!");
			return false;
		}
		return formSubmit($("#loginFrom"), '/index.do');
	}
</script>

</html>
