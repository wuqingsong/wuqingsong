<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Notice</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/notice/delete.do";
	var detailUrl = ctx + "/notice/detail.do";
	var listUrl = ctx + "/notice/list.do?noticeState=";
	$(function() {
		listUrl = listUrl + $("#noticeState").val();
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
							<li><a <c:if test="${noticeState eq 1}"> class="active"</c:if>
								href="${ctx}/notice/list.do?noticeState=1">Released</a></li>
							<li><a <c:if test="${noticeState eq 2}"> class="active"</c:if>
								href="${ctx}/notice/list.do?noticeState=2">Draft</a></li>
							<li><a <c:if test="${noticeState eq 3}"> class="active"</c:if>
								href="${ctx}/notice/list.do?noticeState=3">Unreleased</a></li>
						</ul>
						<input type="hidden" id="noticeState" value="${noticeState}">
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
														<mms:rightTag rightCode="delNotice">
							
								<a class="del-btn" href="javascript:void(0)">Delete</a></mms:rightTag>
								<mms:rightTag rightCode="addNotice"> <a
									class="add-btn" href="${ctx}/notice/add.do">+Add new</a>
									</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%" />
								<col width="45%" />
								<col width="25%" />
								<col width="25%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Title</th>
									<th>Start date</th>
									<th>State</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="notice">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${notice.id}" /></td>
										<td data-id="${notice.id}">${notice.title}</td>
										<td data-id="${notice.id}">
											<fmt:formatDate value="${notice.startDate}" pattern="yyyy-MM-dd HH:mm:ss" />
										</td>
										<td data-id="${notice.id}">
											<mms:dict dictKey="NOTICE_STATE" ctrName="noticeState" dictValue="${notice.noticeState}" controlType="2"></mms:dict>
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
														<mms:rightTag rightCode="delNotice">
								<a class="del-btn" href="javascript:void(0)">Delete</a></mms:rightTag>
								<mms:rightTag rightCode="addNotice"> <a
									class="add-btn" href="${ctx}/notice/add.do">+Add new</a>
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
