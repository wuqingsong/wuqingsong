$(function() {
	$('.remenber-wrapper').on('click',function(){
		var remember = $(this).find('#remember');
		var checked = remember.prop('checked');
		remember.prop('checked',!checked);
		var $icon = $("#ck-icon");
		if(remember.is(':checked')){
			$icon.attr("class","rem-check");
		}else{
			$icon.attr("class","rem-uncheck");
		}
	});
	/*$(document).on("click","#remember", function() {
	
		var $icon = $("#ck-icon");
		if ($icon.hasClass("rem-check")) {
			$icon.removeClass("rem-check");
			$icon.addClass("rem-uncheck");
		} else if ($icon.hasClass("rem-uncheck")) {
			$icon.removeClass("rem-uncheck");
			$icon.addClass("rem-check");
		}
		if($("#remember").is(':checked')){
			$icon.attr("class","rem-check");
		}else{
			$icon.attr("class","rem-uncheck");
		}
	});*/

	var url = ctx + "/veriCode.do";
	$("#code-img").prop("src", url);
	$("#code-img").click(function() {
		$(this).prop("src", url + "?timestamp=" + new Date().getMilliseconds());
	});
	
	var code =getArgs("code");
	if (code) {
		if (code=="10001") {
			$("#msg").html("Your account has been landed elsewhere. Please log in again");
		}
		if (code=="10002") {
			$("#msg").html("Login timeout, please login again");
		}
		setTimeout(function(){
			$("#msg").html("");
		}, 4000);
	}
});

