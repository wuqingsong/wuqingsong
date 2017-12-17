//配置错误提示的节点，默认为label，这里配置成 span （errorElement:'span'）
$.validator.setDefaults({
	errorElement : 'label'
});

// 配置通用的默认提示语
$.extend($.validator.messages, {
	required : 'This field is necessary!',
	equalTo : "Not equals"
});

/*-------------扩展验证规则 懒人建站http://www.51xuediannao.com/-------------*/

// 用户名验证格式
jQuery.validator.addMethod("username", function(value, element) {
	var userName = /^[a-zA-Z0-9_]{6,20}$/;
	return this.optional(element) || (userName.test(value));
});

jQuery.validator.addMethod("norepeat", function(value, element) {
	var url = $(element).data('url');
	var name=	$(element).attr("name");
	var flag = false;
	var args={};
	args[name]=value;
	$.ajax({
		url : url,
		data : args,
		dataType : "json",
		type : "post",
		async : false,
		success : function(data) {
			flag = data;
		}
	});
	return this.optional(element) || flag;
});
// 密码验证格式
jQuery.validator
		.addMethod(
				"password",
				function(value, element) {
					var userPassword = /((?=.*\d)(?=.*\D)|(?=.*[a-zA-Z])(?=.*[^a-zA-Z]))^.{6,10}$/;
					return this.optional(element) || (userPassword.test(value));
				});

/*
 * //电话验证规则 jQuery.validator.addMethod("userPhone", function (value, element) {
 * var userPhone = /^0\d{2,3}-\d{7,8}$/; return this.optional(element) ||
 * (userPhone.test(value)); }, "电话格式如：0371-68787027");
 */
// 身份证
jQuery.validator.addMethod("cert", function(value, element) {
	var certId = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
	return this.optional(element) || (certId.test(value));
});
// 描述详情1-500字符串
jQuery.validator.addMethod("desc", function(value, element) {
	var desc = /^[a-zA-Z0-9_]{1,500}$/;
	return this.optional(element) || (desc.test(value));
});
// 普通框1-100字符串
jQuery.validator.addMethod("normal", function(value, element) {
	var normal = /^[a-zA-Z0-9_]{1,100}$/;
	return this.optional(element) || (normal.test(value));
});

// 金额
jQuery.validator.addMethod("amount", function(value, element) {
	var normal = /^\d+(\.\d{1,2})?$/;
	return this.optional(element) || (normal.test(value));
});
