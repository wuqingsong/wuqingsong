<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>CodeConstrast</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/codeConstrast/delete.do";
	var detailUrl = ctx + "/codeConstrast/detail.do";
	var listUrl = ctx + "/codeConstrast/list.do";
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
						<form action="${ctx}/codeConstrast/list.do" method="post">
							Error code
							<input type="text" id="errorCode" name="errorCode" class="form-input" value="${page.entity.errorCode}" placeholder="Enter Error code" /> 
								<input type="submit" class="common-btn" value="Search">
						</form>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all"></div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="delcodeConstrast">
								<a class="del-btn" href="javascript:void(0)">Delete</a>
							</mms:rightTag>
							<mms:rightTag rightCode="addcodeConstrast">
								 <a class="add-btn" href="${ctx}/codeConstrast/add.do">+Add new</a>
							</mms:rightTag> --%>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%" />
								<col width="15%" />
								<col width="15%" />
								<col width="25%" />
								<col width="15%" />
								<col width="25%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Ref system</th>
									<th>Error code</th>
									<th>Error info</th>
									<th>Cps error code</th>
									<th>Cps error info</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="codeConstrast">
									<tr>
										<td style="text-align: center;"></td>
										<td data-id="${codeConstrast.id}"><mms:dict
												dictKey="REF_SYSTEM" dictValue="${codeConstrast.refSystem}"
												controlType="2"></mms:dict></td>
										<td data-id="${codeConstrast.id}">${codeConstrast.errorCode}</td>
										<td data-id="${codeConstrast.id}">${codeConstrast.errorInfo}</td>
										<td data-id="${codeConstrast.id}">${codeConstrast.cpsErrorCode}</td>
										<td data-id="${codeConstrast.id}">${codeConstrast.cpsErrorInfo}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all"></div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="delcodeConstrast">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addcodeConstrast">
									<a class="add-btn" href="${ctx}/codeConstrast/add.do">+Add
										new</a>
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
