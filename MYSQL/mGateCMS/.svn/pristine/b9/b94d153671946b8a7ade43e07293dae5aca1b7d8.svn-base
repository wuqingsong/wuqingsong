<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>CommandConstrast</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/commandConstrast/delete.do";
	var detailUrl = ctx + "/commandConstrast/detail.do";
	var listUrl = ctx + "/commandConstrast/list.do";
</script>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp"%>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">
					<div class="search-tabs">
						<form action="${ctx}/commandConstrast/list.do" method="post">
							Command id <input type="text" id="commandId" name="commandId"
								class="form-input" value="${page.entity.commandId}"
								placeholder="Enter Command id" /> <input type="submit"
								class="common-btn" value="Search">
						</form>
					</div>
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
								<mms:rightTag rightCode="delcommandConstrast">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addcommandConstrast">
									<a class="add-btn" href="${ctx}/commandConstrast/add.do">+Add
										new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="4%" />
								<col width="15%" />
								<col width="15%" />
								<col width="20%" />
								<col width="15%" />
								<col width="20%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Ref system</th>
									<th>Command id</th>
									<th>Command info</th>
									<th>Cps command id</th>
									<th>Cps command info</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="commandConstrast">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${commandConstrast.id}" /></td>
										<td data-id="${commandConstrast.id}"><mms:dict
												dictKey="REF_SYSTEM"
												dictValue="${commandConstrast.refSystem}" controlType="2"></mms:dict>
										</td>
										<td data-id="${commandConstrast.id}">${commandConstrast.commandId}</td>
										<td data-id="${commandConstrast.id}">${commandConstrast.commandInfo}</td>
										<td data-id="${commandConstrast.id}">${commandConstrast.cpsCommandId}</td>
										<td data-id="${commandConstrast.id}">${commandConstrast.cpsCommandInfo}</td>
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
								<mms:rightTag rightCode="delcommandConstrast">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addcommandConstrast">
									<a class="add-btn" href="${ctx}/commandConstrast/add.do">+Add
										new</a>
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
