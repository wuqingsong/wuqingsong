<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>SystemParam</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/systemParam/delete.do";
	var detailUrl = ctx + "/systemParam/detail.do";
	var listUrl = ctx + "/systemParam/list.do";
</script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp" %>

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
							<mms:rightTag rightCode="addSystemParam">
								<a class="add-btn" href="${ctx}/systemParam/add.do">+Add new</a>
							</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
							<col width="3%" />
								<col width="25%" />
								<col width="25%" />
								<col width="25%" />
								<col width="25%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th> Param title</th>
									<th> Param key</th>
									<th> Param value</th>
									<th> Param desc</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="systemParam">
									<tr>
										<td style="text-align: center;">
											</td>
										<td data-id="${systemParam.id}">${systemParam.paramTitle}</td>
										<td data-id="${systemParam.id}">${systemParam.paramKey}</td>
										<td data-id="${systemParam.id}">${systemParam.paramValue}</td>
										<td data-id="${systemParam.id}">${systemParam.paramDesc}</td>
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
							<mms:rightTag rightCode="addSystemParam">
								 <a class="add-btn" href="${ctx}/systemParam/add.do">+Add new</a>
							</mms:rightTag>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
