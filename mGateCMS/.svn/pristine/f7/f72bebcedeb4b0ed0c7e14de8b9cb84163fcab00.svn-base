<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>
<html>
<head>
<title>Add</title>
<style type="text/css">
	#file-input{
		cursor: pointer;
		border-radius: 25px;
		color: white;
		background: #69524d;
		border: 0px;
		width: 150px;
		height: 40px;
		font-size: 20px;
		outline: none;
		margin: 0px 15px 0px 15px;
		visibility:hidden;
	}
	.input-btn{
		cursor: pointer;
		border-radius: 25px;
		color: white;
		background: #968a87;
		border: 0px;
		width: 120px;
		height: 30px;
		font-size: 15px;
		outline: none;
		margin-left: -150px;
		margin-top: 2px;
	}
	#thumburlShow{
	margin-left: 285px;
	}
    </style>
    <script type="text/javascript">
  function setImg(obj){//用于进行图片上传，返回地址
	  var listUrl = ctx + "/user/getUpload.do";
      var f=$(obj).val();
      if(f == null || f ==undefined || f == ''){
          return false;
      }
      if(!/\.(?:png|jpg|bmp|gif|PNG|JPG|BMP|GIF)$/.test(f))
      {
    	  $("#imgDiv").hide();
          $("#thumburlShow").attr("src","");
          alert("类型必须是图片(.png|jpg|bmp|gif|PNG|JPG|BMP|GIF)");
          $(obj).val('');
          return false;
      }
      var data = new FormData();
      $.each($(obj)[0].files,function(i,file){
          data.append('file', file);
      });
      $.ajax({
          type: "POST",
          contentType:"multipart/form-data",
          url: listUrl,
          data: data,
          cache: false,
          contentType: false,    //不可缺
          processData: false,    //不可缺
          success: function(suc) {
        	  $("#imgDiv").show();
        	  //suc.stateCode==0
              if(suc){
                      $("#userPhoto").val(suc.message);//将地址存储好
                      $("#thumburlShow").attr("src",suc.message);//显示图片                                                              
                  }else{
                	  $("#imgDiv").hide();
                	 alert("上传失败");
                  $("#url").val("");
                  $(obj).val('');
              }
          },
         error: function(XMLHttpRequest, textStatus, errorThrown) {
        	  alert("上传失败，请检查网络后重试");
              $("#url").val("");
              $(obj).val('');
          }
      });
  }
  $(function(){
	  $("#imgDiv").hide();
  });
  function aa(){
	  $('#file-input').click();
  }
  </script>
  <link href="${ctx }/static/uploadify/uploadify.css" rel="stylesheet" type="text/css" /> 
  <script type="text/javascript" src="${ctx }/static/uploadify/jquery.uploadify.min.js"></script>  
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		onkeyup: false,
		submitHandler: function() {
			var roles=$("input[name='roleIds']:checked");
			console.log(roles);
			if(roles.length==0){
				alertMsg("Please choose at least one role!");
			}else{
				 formSubmit($("#dataForm"),'/user/list.do');
			}
		}
	});
	initUpload();
		
});
</script>

</head>
<body>
	<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<div class="info-head">
				<img class="info-icon" src="${ctx}/static/imgs/add-icon.png" />
			</div>
			<form action="${ctx}/user/add.do" id="dataForm" method="post">
				<div class="info-content">
					<div class="info-group">
						<div class="info-title"><em>* </em>Operator name</div>
						<div class="info-value">
							<input type="text" class="form-input" name="userName"
								placeholder="Enter User name"
								required data-rule-username="true" data-msg-username="Please enter the correct format"
								data-rule-norepeat="true" data-msg-norepeat="User name already exists!" data-url="${ctx}/user/validate.do"
								/>
						</div>
					</div>
					<div class="info-group" style="	position: relative;">
						<div class="info-title"><em>* </em>Operator password</div>
						<div class="info-value">
							<input type="password" class="form-input" name="userPassword"
								placeholder="Enter User password"
								required data-rule-password="true" data-msg-password="Please enter the alphanumeric combination"
								/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Real name</div>
						<div class="info-value">
							<input type="text" class="form-input" name="realName"
							required placeholder="Enter Real name"
							/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator photo</div>
						<!-- <div class="info-value" id="userPhotoDiv" style="display: block; width: 80%;">
						   	 <input type="file" name="uploadify" id="uploadify" />
						   	 <input type="hidden" id="userPhoto" name="userPhoto">
						</div> -->
						<div class="info-value">
						<input type="hidden" id="userPhoto" name="userPhoto"/>
						</div>
			    			<input id="file-input" type="file" onchange="setImg(this);" required placeholder="Enter imgName"/>
			  	 			<input class="input-btn" type="button" value="choose" name="logoFile" id="logoFile" onClick="aa();" />
							<div id="imgDiv" ><img id="thumburlShow" style="margin-top: 2px;"  class="user-photo" src=""/></div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Operator no</div>
						<div class="info-value">
							<input type="text" class="form-input" name="userNo"
							required	placeholder="Enter User no"
							/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Operator phone</div>
						<div class="info-value">
							<input type="text" class="form-input" name="userPhone"
							required	placeholder="Enter User phone"
							/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Operator email</div>
						<div class="info-value">
							<input type="text" class="form-input" name="userEmail" placeholder="Enter User email"
								required data-rule-email="true" 
							/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Cert type</div>
						<div class="info-value">
							<mms:dict dictKey="CERT_TYPE" ctrName="certType" controlType="1"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>User gender</div>
						<div class="info-value">
							<mms:dict dictKey="1" ctrName="userGender" controlType="1"></mms:dict>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Cert No</div>
						<div class="info-value">
							<input type="text" required class="form-input" name="certId"
								placeholder="Enter Cert no"
								/>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Department</div>
						<div class="info-value">
							<select class="form-select" required name="deptId" id="deptId">
								<option value="">Choose a Department</option>
								<c:forEach items="${deptList}" var="dept">
									<option value="${dept.id }">${dept.deptName }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title"><em>* </em>Role</div>
						<div class="info-value" id="role-chk">
							<c:forEach items="${roleList}" var="role">
							<label for="${role.id }"><input type="checkbox"  name="roleIds" id="${role.id }" value="${role.id }">${role.roleName}</label>
							</c:forEach>
						</div>
					</div>
					<div class="info-group">
						<div class="info-title">Operator remark</div>
						<div class="info-value">
							<textarea  class="form-text" name="userRemark" placeholder="Enter role User remark"></textarea>
						</div>
					</div>
					<div  id="uploadFileContainerPic" class="easyui-upload" num="1" picWidth="100" picHeigth="100" pics=""/>
				</div>
				<div class="info-bottom">
					<input type="button" class="common-btn return" value="return">
						<input type="submit" class="common-btn" value="Submit">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
