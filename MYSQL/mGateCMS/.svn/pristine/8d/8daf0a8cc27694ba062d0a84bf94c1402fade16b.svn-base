<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Detail</title>
<script>
	$(function() {
		//jquery.validate
		$("#updateForm").validate({
			submitHandler : function() {
				formSubmit($("#updateForm"), 'reload');
			}
		});

	});
</script>
</head>
<body onunload="initUpdate();">
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<form action="${ctx}/feedback/update.do" id="updateForm"
				method="post">
				<div class="info-content">
					<input type="hidden" id="id" name="id" value="${feedbackInfo.id}">
					<div class="info-group">
						<div class="info-title">Create By</div>
						<div class="info-value">
							<span>${feedbackInfo.userName}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Content</div>
						<div class="info-value">
							<span>${feedbackInfo.content}</span>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Reply state</div>
						<div class="info-value">
							<span>${feedbackInfo.replyState}</span>
						</div>
					</div>
					<c:if test="${feedbackInfo.replyState eq 1 }">
						<div class="info-group">
							<div class="info-title">Reply Content</div>
							<div class="info-value">
								<span>${feedbackInfo.replyContent}</span>
							</div>
						</div>
						<div class="info-group">
							<div class="info-title">Reply By</div>
							<div class="info-value">
								<span>${feedbackInfo.replyUserName}</span>
							</div>
						</div>
					</c:if>
				</div>
				<div class="info-bottom">
<!-- 					<div class="btn-detail">
 -->						<input type="button" class="common-btn return" value="return">
						<mms:rightTag rightCode="replyFeedback">
							<c:if test="${feedbackInfo.replyState eq 0 }">
								<input type="button" class="common-btn modify"
									onclick="modify('content')" value="Reply">
							</c:if>
						</mms:rightTag>
					<!-- </div> -->
				</div>
			</form>
		</div>
	</div>
</body>
<script>
	var updateUrl = ctx + "/feedback/update.do";
	var deleteUrl = ctx + "/feedback/delete.do";
</script>
</html>

