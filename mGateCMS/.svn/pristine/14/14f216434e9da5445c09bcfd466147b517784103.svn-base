<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Device bind</title>
<script type="text/javascript">
	var listUrl = ctx + "/deviceBind/list.do";
	var deviceBindUrl = ctx + "/deviceBind/unBind.do";
	function Unbundling(){
		var id = $("#id_input").val();
		confirmMsg("Do you want to tie the current user?", function() {
			$.ajax({
				type : "POST",
				url : deviceBindUrl,
				data : {
					id : id
				},
				dataType : "json",
				success : function(data) {
					alertMsg(data.message);
				}
				});
		});
	}
	function customer(val) {
		var MSISDN = $("#MSISDN").val();
		$
				.ajax({
					url : listUrl,
					type : "POST",
					dataType : "json",
					data : {
						phone : MSISDN,
						val : val
					},
					success : function(data) {
						if (data == "") {
							if(val==1){
								alertMsg("Customer does not exist");
							}else{
								alertMsg("Merchant does not exist");
							}
							
						}
						var v = "";
						$
								.each(
										data,
										function(index, item) {
											v += "<tr><td><input id='id_input' value='"
												+ item.id + "' type='hidden'/></td>";
											v += "<td >" + item.userName + "</td>";
											v += "<td >" + item.msisdn + "</td>";
											v += "<td >" + 
											item.createDate
											+ "</td>";
											v += "<td >" +item.bindState
											 + "</td>";
											v += "<td >" + item.imei + "</td>";
											v += "<td >" + item.phoneModel + "</td>";
											v += "<td >" + item.phoneSystem + "</td>";
											v += "<td >" + 
											<mms:rightTag rightCode="unbindDevice">
											'<button class="form-input" onclick="Unbundling()">Unbundling</button>'+
											</mms:rightTag> 
											"</td>";
											v += "</tr>";

										});
						$("#list").html(v);
					}
				});
	}
</script>
<style type="text/css">
</style>
</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>

		<div class="main-panel" id="main-panel">
			<%@ include file="../main/menu.jsp" %>

			<div class="detail-panel" id="detail-panel">
				<div class="detail-content">
						<div class="info-group">
							<div class="info-title">
								<em>* </em>Phone
							</div>
							<input type="text" class="form-input" id="MSISDN" name="MSISDN"
								placeholder="Enter Phone" required data-rule-username="true"
								data-msg-username="Please enter the correct format" />
								  <input
								type="button" class="common-btn" value="Search Customer"
								style=" width: 15%;height: 30px;" onclick="customer('1')"> 
								<input
								type="button" class="common-btn" value="Search Merchant"
								style=" width: 15%;height: 30px;" onclick="customer('2')"> 
						</div>
						

				</div>
				<div class="table-panel">
					<table class="data-table">
					<colgroup>
								<col width="3%" />
								<col width="10%" />
								<col width="10%" />
								<col width="20%" />
								<col width="10%" />
								<col width="10%" />
								<col width="10%" />
								<col width="10%" />
							</colgroup>
						<thead>
							<tr>
								<th></th>
								<th>Name</th>
								<th>Msisdn</th>
								<th>Create date</th>
								<th>Bind state</th>
								<th>Imei</th>
								<th>Phone model</th>
								<th>Phone system</th>
								<th>Operation</th>
							</tr>
						</thead>
						<tbody id="list">
						</tbody>
					</table>
				</div>
				<div class="page-panel"></div>
			</div>
		</div>
	</div>
</body>
</html>
