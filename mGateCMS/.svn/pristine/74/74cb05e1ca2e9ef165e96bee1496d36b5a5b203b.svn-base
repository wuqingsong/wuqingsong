<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>User</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/user/delete.do";
	var detailUrl = ctx + "/user/detail.do";
	var listUrl = ctx + "/user/list.do";
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
						<form action="${ctx}/user/list.do" method="post">
							<label>Real name</label> <input type="text" id="realName"
								name="realName" class="form-input"
								value="${page.entity.realName}" placeholder="Enter Real Name" />
							<label style="margin-left: 15px;">User phone</label> <input
								type="text" id="userPhone" name="userPhone" class="form-input"
								value="${page.entity.userPhone}" placeholder="Enter User phone" />
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
								<mms:rightTag rightCode="delUser">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addUser">
									<a class="add-btn" href="${ctx}/user/add.do">+Add new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="5%" />
								<col width="10%" />
								<col width="10%" />
								<col width="10%" />
								<col width="15%" />
								<col width="15%" />
								<col width="15%" />
								<col width="20%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Real name</th>
									<th>User no</th>
									<th>User phone</th>
									<th>User email</th>
									<th>Department</th>
									<th>User state</th>
									<th>User remark</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="user">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${user.id}" /></td>
										<td data-id="${user.id}">${user.realName}</td>
										<td data-id="${user.id}">${user.userNo}</td>
										<td data-id="${user.id}">${user.userPhone}</td>
										<td data-id="${user.id}">${user.userEmail}</td>
										<td data-id="${user.id}">${user.deptName}</td>
										<td data-id="${user.id}"><mms:dict dictKey="USER_STATE"
												dictValue="${user.userState}" controlType="2"></mms:dict></td>
										<td data-id="${user.id}">${user.userRemark}</td>
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
								<mms:rightTag rightCode="delUser">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addUser">
									<a class="add-btn" href="${ctx}/user/add.do">+Add new</a>
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
