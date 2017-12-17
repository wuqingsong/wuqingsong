<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Business</title>
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
								<!-- <input type="checkbox" class="chose-all" /> <span>All</span> -->
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="delsystemService">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag> --%>
								<mms:rightTag rightCode="addsystemService">
									<a class="add-btn" href="${ctx}/systemService/add.do">+Add
										new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="3%" />
								<col width="17%" />
								<col width="15%" />
								<col width="20%" />
								<col width="15%" />
								<col width="15%" />
								<col width="15%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Business code</th>
									<th>Business name</th>
									<th>Business description</th>
									<th>Business type</th>
									<th>listType</th>
									<th>State</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="systemService">
									<tr>
										<td style="text-align: center;"></td>
										<td data-id="${systemService.id}">${systemService.serviceCode}</td>
										<td data-id="${systemService.id}">${systemService.serviceName}</td>
										<td data-id="${systemService.id}">${systemService.serviceDesc}</td>
										<td data-id="${systemService.id}">${systemService.dictId}</td>
										<td data-id="${systemService.id}"><mms:dict
												dictKey="LIST_TYPE" dictValue="${systemService.listType}"
												controlType="2"></mms:dict></td>
										<td><c:if test="${systemService.serviceState==1}">
												<div data-id="${systemService.id}" class="buzz-enabled"></div>
											</c:if> <c:if test="${systemService.serviceState==0}">
												<div data-id="${systemService.id}" class="buzz-disabled"></div>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="page-panel">
						<div class="page-content">
							<div class="page-content-all">
								<!-- <input type="checkbox" class="chose-all" name="" value="" /> <span>All</span> -->
							</div>
							<div class="page-info">
								<span>total ${page.totalCount}</span> <img class="former-page"
									src="${ctx}/static/imgs/left_n.png" /> <span>
									&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
									class="latter-page" src="${ctx}/static/imgs/right_n.png" />
							</div>
							<div class="opt-content">
								<%-- <mms:rightTag rightCode="delsystemService">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag> --%>
								<mms:rightTag rightCode="addsystemService">
									<a class="add-btn" href="${ctx}/systemService/add.do">+Add
										new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var cpage = parseInt("${page.cpage}");
		var tpage = parseInt("${page.totalPage}");
		var deleteUrl = ctx + "/systemService/delete.do";
		var detailUrl = ctx + "/systemService/detail.do";
		var listUrl = ctx + "/systemService/list.do";
		$(function() {
			$(".buzz-disabled").on(
					'click',
					function() {
						var id = $(this).data("id");
						confirmMsg("You really want to enable this business?",
								function() {
									changeState(id, '1');
								});
					});
			$(".buzz-enabled").on(
					'click',
					function() {
						var id = $(this).data("id");
						confirmMsg("You really want to disable this business?",
								function() {
									changeState(id, '0');
								});
					});
		});

		function changeState(id, state) {
			$.ajax({
				url : ctx + '/systemService/update.do',
				type : 'post',
				dataType : "json",
				data : {
					'id' : id,
					'serviceState' : state
				},
				success : function(data) {
					if (data.stateCode == sucCode) {
						location.reload();
					} else {
						alertMsg(data.message);
					}
				}
			});
		}
	</script>
</body>
</html>
