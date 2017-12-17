<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Trading Limit</title>

</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp"%>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">
					<div class="page-panel" style="height: 50px;">
						<div class="page-content">
							<div class="page-content-all">
								<select id="business" class="form-select">
									<option value="">All</option>
									<c:forEach var="business" items="${serviceList }">
										<option
											<c:if test="${business.id eq serviceId}">selected="selected"</c:if>
											value="${business.id}">${business.serviceName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%">
								<col width="20%">
								<col width="20%">
								<col width="20%">
								<col width="20%">
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Limit amount</th>
									<th>Currency</th>
									<th>Limit Type</th>
									<th>Business name</th>
									<th style="text-align: center;">Options</th>
								</tr>
							</thead>
							<tbody id="limitList">
								<c:forEach var="limit" items="${limitList }">
									<tr>
										<td></td>
										<td><fmt:formatNumber type="number"
												value="${limit.limitAmount }" pattern="#0.00" /></td>
										<td><mms:dict dictKey="CURRENCY"
												dictValue="${limit.currency }" controlType="2"></mms:dict></td>
										<td><mms:dict dictKey="LIMIT_TYPE"
												dictValue="${limit.limitType }" controlType="2"></mms:dict>
										</td>
										<td>${limit.serviceName }</td>
										<td style="text-align: center;"><a data-id="${limit.id }"
											data-amount="<fmt:formatNumber type="number" value="${limit.limitAmount }" pattern="#0	.00"/>"
											class="opta upd">Modify</a><a data-id="${limit.id }"
											class="opta del">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="page-panel">
						<div class="page-info">
							<span>total ${page.totalCount}</span> <img class="former-page"
								src="${ctx}/static/imgs/left_n.png" /> <span>
								&nbsp;${page.cpage}/${page.totalPage}&nbsp;</span> <img
								class="latter-page" src="${ctx}/static/imgs/right_n.png" />
						</div>
						<div class="page-content">
							<div class="page-content-all" id="botTip">
								<%-- <c:if test="${empty serviceId}">
									<span>Please select a Business!</span>
								</c:if> --%>
							</div>
						</div>
						<div class="opt-content"
							<c:if test="${empty serviceId}"> style="display: none;" </c:if>>
							<mms:rightTag rightCode="addsystemService">
								<a id="addLimit" class="box-cancel"
									style="border: 0;color: white;text-align: center;"
									href="${ctx}/transactionLimit/add.do?serviceId=${serviceId}">Add
									limit</a>
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
		var deleteUrl = ctx + "/transactionLimit/delete.do";
		var detailUrl = ctx + "/transactionLimit/detail.do";
		var listUrl = ctx + "/transactionLimit/list.do";

		$(function() {
			$("#business").on("change", function() {
				var serviceId = $(this).val();
				if (serviceId != null && serviceId != "") {
					location.href = listUrl + "?serviceId=" + serviceId;
				} else {
					location.href = listUrl;
				}

			});

			$(".opta.del").on("click", function() {
				var id = $(this).data('id');
				confirmMsg("Are you sure to delete this limit?", function() {
					$.ajax({
						url : deleteUrl,
						type : 'post',
						dataType : 'json',
						data : {
							"id" : id
						},
						success : function(data) {
							if (data.stateCode == sucCode) {
								location.reload();
							} else {
								alertMsg(data.message);
							}
						}
					});
				});
			});

			$(".opta.upd").on("click", function() {
				var id = $(this).data('id');
				var init = $(this).data('amount');
				Tip.edit({
					title : 'Modify Limmit Amount',
					name : 'limitAmount',
					initVal : init,
					tip : '0 stands for quota'
				}).on(function(e) {
					if (e) {
						var amount = $("#box-input").val();
						var reg = /^\d+(\.\d{1,2})?$/;
						if (!reg.test(amount)) {
							alertMsg("Limit amount must be 2 decimal digits!");
							return;
						}
						$.ajax({
							url : ctx + "/transactionLimit/update.do",
							type : 'post',
							dataType : 'json',
							data : {
								"id" : id,
								"limitAmount" : amount
							},
							success : function(data) {
								if (data.stateCode == sucCode) {
									$(".mask-body,.box-body").remove();
									location.reload();
								} else {
									alertMsg(data.message);
								}
							}
						});
					}
				});
			});

		});

		/* function initList(){
			$("option[value='']").prop("selected",true);
		} */
	</script>
</body>
</html>
