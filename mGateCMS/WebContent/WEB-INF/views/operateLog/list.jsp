<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>OperateLog</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/operateLog/delete.do";
	var detailUrl = ctx + "/operateLog/detail.do";
	var listUrl = ctx + "/operateLog/list.do";
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
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="deloperateLog">
								<a class="del-btn" href="javascript:void(0)">Delete</a>
							</mms:rightTag>
							<mms:rightTag rightCode="addoperateLog">
								 <a class="add-btn" href="${ctx}/operateLog/add.do">+Add new</a>
							</mms:rightTag> --%>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%">
								<col width="15%">
								<col width="20%">
								<col width="15%">
								<col width="35%">
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Operate Menu</th>
									<th>Operater</th>
									<th>Operate Type</th>
									<th>Description</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="operateLog">
									<tr>
										<td style="text-align: center;"></td>
										<td data-id="${operateLog.id}">${operateLog.operateMethod}</td>
										<td data-id="${operateLog.id}">${operateLog.operator}</td>
										<td data-id="${operateLog.id}">${operateLog.operateType}</td>
										<td data-id="${operateLog.id}">${operateLog.operateDesc}</td>
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
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="deloperateLog">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addoperateLog">
									<a class="add-btn" href="${ctx}/operateLog/add.do">+Add new</a>
								</mms:rightTag> --%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
