<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/public/head.jsp"%>

<html>
  <head>
    <title>My JSP 'test.jsp' starting page</title>
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
	.test-btn{
		position:absolute;
		cursor: pointer;
		border-radius: 25px;
		color: white;
		background: #968a87;
		border: 0px;
		width: 120px;
		height: 30px;
		font-size: 20px;
		outline: none;
		margin: 0px 15px 0px 15px;
	}
    </style>
  </head>
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
                      $("#thumbUrl").val(suc.message);//将地址存储好
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
  $(function (){
	  $(".aa").attr("data-checked","1");
  })
  </script>
  
  <body>
 <input type="checkbox" checked="checked" class="aa" data-checked="0"/>
     <span class="personattr">身份证正面照片:</span>
     <input type="hidden" name="img"  id="thumbUrl"/>
    <input id="file-input" type="file" value="ssss" name="logoFile" id="logoFile" onchange="setImg(this);"/>
  	  <input class="test-btn" type="button" value="上传" name="logoFile" id="logoFile" onClick="aa();" />
	 <div id="imgDiv"  ><img id="thumburlShow" src="" width="120" height="120"/></div>
 	
  </body>
  
</html>
