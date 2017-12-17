<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Department</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/department/delete.do";
	var detailUrl = ctx + "/department/detail.do";
	var listUrl = ctx + "/department/list.do";
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
								<input type="checkbox" class="chose-all" /> <span>All</span>
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<mms:rightTag rightCode="delDept">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addDept">
									<a class="add-btn" href="${ctx}/department/add.do">+Add new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="10%" />
								<col width="30%" />
								<col width="60%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Department name</th>
									<th>Department description</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="department">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${department.id}" /></td>
										<td data-id="${department.id}">${department.deptName}</td>
										<td data-id="${department.id}">${department.deptDesc}</td>
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
							<div class="opt-content">
								<mms:rightTag rightCode="delDept">

									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>

								<mms:rightTag rightCode="addDept">
									<a class="add-btn" href="${ctx}/department/add.do">+Add new</a>
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
