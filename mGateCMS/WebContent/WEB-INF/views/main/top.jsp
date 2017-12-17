<%@ include file="/WEB-INF/views/public/refrence.jsp"%>
<div class="top-nav">
	<div class="top-left">
		<div class="sys-info">
			<img class="sys-icon" src="${ctx}/static/imgs/7-Eleven@2x.png" /> <span
				class="sys-name"> Mobile Money Management System </span>
		</div>
		<div class="user-info">
			<div style="float: left;">
				<img class="sys-icon" style="margin-top: 2px;" src="${ctx}${sessionScope.userSessionInfo.userPhoto}" />
			</div>
			<div class="infos">
				<span class="user-role">${sessionScope.userSessionInfo.deptName }</span>
				<span class="real-name">${sessionScope.userSessionInfo.realName }</span>
			</div> 
		</div>
	</div>
	<div class="top-right">
		<div class="log-out" onclick="logOut();">
			<%-- <img class="logout-icon" src="${ctx}/static/imgs/log-out.png" />  --%><span
				id="logout"> Log out </span>
		</div>
	</div>
</div>