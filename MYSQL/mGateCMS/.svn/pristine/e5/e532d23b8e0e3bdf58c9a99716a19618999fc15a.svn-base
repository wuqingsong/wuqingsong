<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>FeedbackInfo</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/feedback/delete.do";
	var detailUrl = ctx + "/feedback/detail.do";
	var listUrl = ctx + "/feedback/list.do?refSystem=";
	$(function() {
		listUrl = listUrl + $("#refSystem").val();
	});
</script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp" %>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">
					<div class="head-tabs">
						<ul class="tab-list">
							<li><a <c:if test="${refSystem eq 1}"> class="active"</c:if>
								href="${ctx}/feedback/list.do?refSystem=1">Customer</a></li>
							<li><a <c:if test="${refSystem eq 2}"> class="active"</c:if>
								href="${ctx}/feedback/list.do?refSystem=2">Merchant</a></li>
						</ul>
						<input type="hidden" id="refSystem" value="${refSystem}">
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all">
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="3%" />
								<col width="20%" />
								<col width="20%" />
								<col width="20%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Create by</th>
									<th>User name</th>
									<th>Content</th>
									<th>Reply state</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="feedbackInfo">
									<tr>
										<td></td>
										<td data-id="${feedbackInfo.id}">${feedbackInfo.createBy}</td>
										<td data-id="${feedbackInfo.id}">${feedbackInfo.userName}</td>
										<td data-id="${feedbackInfo.id}">${feedbackInfo.content}</td>
										<td data-id="${feedbackInfo.id}">${feedbackInfo.replyState}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all">
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
