<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>QuestionAnswer</title>
<script type="text/javascript">
	var cpage = parseInt("${page.cpage}");
	var tpage = parseInt("${page.totalPage}");
	var deleteUrl = ctx + "/questionAnswer/delete.do";
	var detailUrl = ctx + "/questionAnswer/detail.do";
	var listUrl = ctx + "/questionAnswer/list.do";
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
								<mms:rightTag rightCode="delQuestionAnswer">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addQuestionAnswer">
									<a class="add-btn" href="${ctx}/questionAnswer/add.do">+Add
										new</a>
								</mms:rightTag>
							</div>
						</div>
					</div>
					<div class="table-panel">
						<table class="data-table">
							<colgroup>
								<col width="4.5%" />
								<col width="24%" />
								<col width="24%" />
								<col width="24%" />
							</colgroup>
							<thead>
								<tr>
									<th></th>
									<th>Question title</th>
									<th>Question desc</th>
									<th>Question type</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${page.result}" var="questionAnswer">
									<tr>
										<td style="text-align: center;"><input type="checkbox"
											name="item" id="checkboxId" value="${questionAnswer.id}" /></td>
										<td data-id="${questionAnswer.id}">${questionAnswer.title}</td>
										<td data-id="${questionAnswer.id}">${questionAnswer.questionDesc}</td>
										<td data-id="${questionAnswer.id}"><mms:dict
												dictKey="QUESTION_TYPE"
												dictValue="${questionAnswer.questionType}"
												ctrName="questionType" controlType="2"></mms:dict></td>
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
								<mms:rightTag rightCode="delQuestionAnswer">
									<a class="del-btn" href="javascript:void(0)">Delete</a>
								</mms:rightTag>
								<mms:rightTag rightCode="addQuestionAnswer">
									<a class="add-btn" href="${ctx}/questionAnswer/add.do">+Add
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
