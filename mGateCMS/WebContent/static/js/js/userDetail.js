$(function() {
	
});
function InitializePassword() {
	var updatePwd = ctx + "/user/initPassword.do";
	 var id = $("#id").val();
	confirmMsg("Do you want to initialize the password for this user?", function() {
		$.ajax({
			url : updatePwd,
			type : "POST",
			dataType : "json",
			data : {userId:id},
			async : false,
			success : function(data) {
				alertMsg(data.message);
			}
		});
	});
}
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
    console.log(111);
    $.ajax({
        type: "POST",
        contentType:"multipart/form-data",
        url: listUrl,
        data: data,
        cache: false,
        contentType: false,    //不可缺
        processData: false,    //不可缺
        success: function(suc) {
        	console.log(suc.message);
      	  $("#imgDiv").show();
      	  //suc.stateCode==0
            if(suc){
          	  		$("#user-Photo").hide();
                    $("#userPhoto").val(suc.message);//将地址存储好
                    $("#thumburlShow").attr("src",ctx+suc.message);//显示图片       
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
function updState(val, msg) {
	var id = $("#id").val();
	confirmMsg(msg, function() {
		$.ajax({
			url : updateUrl,
			type : "POST",
			dataType : "json",
			data : {
				id : id,
				userState : val
			},
			async : false,
			success : function(data) {
				if (data.stateCode == sucCode) {
					location.reload();
				} else {
					alertMsg(data.message);
				}

			}
		});
	});
}
function test(){
	$("#logoFile").show();
}
