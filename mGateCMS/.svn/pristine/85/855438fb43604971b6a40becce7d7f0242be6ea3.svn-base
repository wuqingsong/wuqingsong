<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>TableRule</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/tableRule/delete.do";
	var detailUrl = ctx + "/tableRule/detail.do";
	var listUrl = ctx + "/tableRule/list.do";
</script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp"%>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all">
								<input type="checkbox" class="chose-all" /> <span>All</span>
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content"></div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%">
								<col width="25%">
								<col width="25%">
								<col width="45%">
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Table name</th>
									<th>Rule</th>
									<th>Description</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="tableRule">
									<tr>
										<td style="text-align: center;"></td>
										<td data-id="${tableRule.id}">${tableRule.tableName}</td>
										<td data-id="${tableRule.id}">${tableRule.rule}</td>
										<td data-id="${tableRule.id}">${tableRule.ruleDesc}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all">
								<input type="checkbox" class="chose-all" name="" value="" /> <span>All</span>
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
