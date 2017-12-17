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
	margin-left: 55px;
	}
    </style>
<script>
$(function(){
    //jquery.validate
	$("#dataForm").validate({
		submitHandler: function() {
			formSubmit($("#dataForm"),'/cmsImg/list.do');
		}
	});
	//$("#thumburlShow").hide();	
});
</script>
  <link href="${ctx }/static/uploadify/uploadify.css" rel="stylesheet" type="text/css" /> 
  <script type="text/javascript" src="${ctx }/static/uploadify/jquery.uploadify.min.js"></script> 
  <script type="text/javascript">
  function setImg(obj){//用于进行图片上传，返回地址
	  var listUrl = ctx + "/cmsImg/getUpload.do";
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
                      $("#imgName").val(suc.message);//将地址存储好
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
</head>
<body>
<div class="whole-page">
		<jsp:include page="../main/top.jsp"></jsp:include>
		<div class="info-panel">
			<div class="info-head">
				<img class="info-icon" src="${ctx}/static/imgs/add-icon.png" />
			</div>
			<form id="dataForm" action="${ctx}/cmsImg/add.do" method="post">
				<div class="info-content">
			<div class="info-group">
				<div class="info-title"><em>* </em>imgName</div>
				<div class="info-value">
						<input type="hidden" class="form-input" id="imgName" name="imgName"
							 />
					</div>
    			<input id="file-input" type="file" onchange="setImg(this);" required placeholder="Enter imgName"/>
  	 			<input class="input-btn" type="button" value="choose" name="logoFile" id="logoFile" onClick="aa();" />
				<div id="imgDiv" ><img id="thumburlShow" style="margin-top: 2px;"  class="user-photo" src=""/></div>
			</div>
			<div class="info-group">
				<div class="info-title"><em>* </em>imgDesc</div>
					<div class="info-value">
						<input type="text" class="form-input" id="imgDesc" name="imgDesc"
							required placeholder="Enter imgDesc" />
					</div>
			</div>
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
