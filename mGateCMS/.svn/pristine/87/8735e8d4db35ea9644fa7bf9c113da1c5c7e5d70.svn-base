<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>SystemDict</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/systemDict/delete.do";
	var detailUrl = ctx + "/systemDict/detail.do";
	var listUrl = ctx + "/systemDict/list.do";
	var getDictName = ctx + "/systemDict/getDictName.do";

	function getOne(td, data) {
		location.href = ctx + "/systemDict/detail.do?id=" + data;
	}
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
						<form action="${ctx}/systemDict/list.do" method="post">
							Dict name 
							<input type="text" id="dictName" name="dictName" class="form-input" value="${page.entity.dictName}" placeholder="Enter Dict name" /> 
								<input type="submit" class="common-btn" value="Search">
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
								<mms:rightTag rightCode="delSystemDict">

									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addSystemDict">
									<a class="add-btn" href="${ctx}/systemDict/add.do">+Add new</a>
								</mms:rightTag>
							</div>

						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%" />
								<col width="25%" />
								<col width="25%" />
								<col width="25%" />
								<col width="25%" />
							</colgroup>
							<thead>
							<thead>
								<tr>
									<th></th>
									<th>Dict key</th>
									<th>Dict value</th>
									<th>Dict name</th>
									<th>Dict description</th>
								</tr>
							</thead>
							<tbody id="list">
								<c:forEach items="${page.result}" var="systemDict">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${systemDict.id}" /></td>
										<td data-id="${systemDict.id}">${systemDict.dictKey}</td>
										<td data-id="${systemDict.id}">${systemDict.dictValue}</td>
										<td data-id="${systemDict.id}">${systemDict.dictName}</td>
										<td data-id="${systemDict.id}">${systemDict.dictDesc}</td>
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
								<mms:rightTag rightCode="delSystemDict">

									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addSystemDict">
									<a class="add-btn" href="${ctx}/systemDict/add.do">+Add new</a>
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
