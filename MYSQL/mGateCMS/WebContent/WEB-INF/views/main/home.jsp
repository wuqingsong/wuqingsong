<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Home</title>
<script type="text/javascript" src="${ctx}/static/i18n/i18n.js"></script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp"%>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">

					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all"></div>
							<div class="page-info"></div>
							<div class="opt-content"></div>
						</div>
					</div>
					<div class="table-panel">
						<div style="text-align: center;padding-bottom: 80%;">
							<h2><!-- Welcome to Mobile Money Management System! --></h2>
						</div>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all"></div>
							<div class="page-info"></div>
							<div class="opt-content"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
