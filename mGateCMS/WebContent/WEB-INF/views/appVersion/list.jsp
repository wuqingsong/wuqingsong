<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>AppVersion</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/appVersion/delete.do";
	var detailUrl = ctx + "/appVersion/detail.do";
	var listUrl = ctx + "/appVersion/list.do";
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
							<mms:rightTag rightCode="delApp">
								<a class="del-btn" href="javascript:void(0)">Delete</a> 
								</mms:rightTag>
								<mms:rightTag rightCode="addApp"><a
									class="add-btn" href="${ctx}/appVersion/add.do">+Add new</a>
									</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%" />
								<col width="11%" />
								<col width="11%" />
								<col width="11%" />
								<col width="9%" />
								<col width="14%" />
								<col width="11%" />
								<col width="10%" />
								<col width="14%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>App name</th>
									<th>Version no</th>
									<th>Download url</th>
									<th>App desc</th>
									<th>Upgrade identifier</th>
									<th>Upgrade type</th>
									<th>Upgrade info</th>
									<th>Publish date</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="appVersion">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${appVersion.id}" /></td>
										<td data-id="${appVersion.id}">${appVersion.appName}</td>
										<td data-id="${appVersion.id}">${appVersion.versionNo}</td>
										<td data-id="${appVersion.id}">${appVersion.downloadUrl}</td>
										<td data-id="${appVersion.id}">${appVersion.appDesc}</td>
										<td data-id="${appVersion.id}">
										<mms:dict dictKey="UPGRADE_IDENTIFIER" dictValue="${appVersion.upgradeIdentifier}" controlType="2"></mms:dict>
										</td>
										<td data-id="${appVersion.id}">
										<mms:dict dictKey="UPGRADE_TYPE" dictValue="${appVersion.upgradeType}" controlType="2"></mms:dict>
										</td>
										<td data-id="${appVersion.id}">${appVersion.upgradeInfo}</td>
										<td data-id="${notice.id}">
											<fmt:formatDate value="${appVersion.publishDate}" pattern="yyyy-MM-dd HH:mm:ss" />
										</td>
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
							<mms:rightTag rightCode="delApp">
								<a class="del-btn" href="javascript:void(0)">Delete</a></mms:rightTag>
								<mms:rightTag rightCode="addApp"> <a
									class="add-btn" href="${ctx}/appVersion/add.do">+Add new</a>
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
