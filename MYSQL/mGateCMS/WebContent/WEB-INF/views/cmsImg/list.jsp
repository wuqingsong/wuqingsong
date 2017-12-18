<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>CmsImg</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/cmsImg/delete.do";
	var detailUrl = ctx + "/cmsImg/detail.do";
	var listUrl = ctx + "/cmsImg/list.do";
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
							<mms:rightTag rightCode="delcmsImg">
								<a class="del-btn" href="javascript:void(0)">Delete</a>
							</mms:rightTag>
							<mms:rightTag rightCode="addcmsImg">
								 <a class="add-btn" href="${ctx}/cmsImg/add.do">+Add new</a>
							</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
							</colgroup>
							<thead>
								<tr>
									<th></th>
				<th> imgName</th>
				<th> imgDesc</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="cmsImg">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${cmsImg.id}" /></td>
		<td data-id="${cmsImg.id}"><img src="${cmsImg.imgName}" width="100px" height="40px"/></td>
		<td data-id="${cmsImg.id}">${cmsImg.imgDesc}</td>
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
							<mms:rightTag rightCode="delcmsImg">
								<a class="del-btn" href="javascript:void(0)">Delete</a>
							</mms:rightTag>
							<mms:rightTag rightCode="addcmsImg">
								 <a class="add-btn" href="${ctx}/cmsImg/add.do">+Add new</a>
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
