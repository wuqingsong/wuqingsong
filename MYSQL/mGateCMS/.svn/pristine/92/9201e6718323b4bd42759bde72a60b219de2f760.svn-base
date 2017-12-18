//表单提交
function formSubmit(form, pageUrl) {
	var url = $(form).attr("action");
	var method = $(form).attr("method");
	$.ajax({
		url : url,
		type : method,
		dataType : "json",
		data : $(form).serialize(),
		async : false,
		success : function(data) {
			if (data.stateCode == sucCode) {
				if (pageUrl) {
					if (pageUrl == 'reload') {
						location.href = location.href;
					} else {
						location.href = ctx + pageUrl;
					}
				}
			} else {
				alertMsg(data.message);
				var codeImg = $("#code-img");
				if (codeImg) {
					$("#code-img").prop("src",
							ctx + "/veriCode.do" + "?timestamp=" + new Date().getMilliseconds());
				}
			}
		}
	});

	return false;
}

// 居中
function center(obj) {
	var screenWidth = $(window).width(), screenHeight = $(window).height(); // 当前浏览器窗口的
	// 宽高

	var scrolltop = $(document).scrollTop();
	// 获取当前窗口距离页面顶部高度
	var objLeft = (screenWidth - obj.width()) / 2;

	var objTop = (screenHeight - obj.height()) / 2 + scrolltop;

	obj.css({
		left : objLeft + 'px',
		top : objTop + 'px',
		'display' : 'block'
	});
	// 浏览器窗口大小改变时
	$(window).resize(function() {
		screenWidth = $(window).width();
		screenHeight = $(window).height();
		scrolltop = $(document).scrollTop();

		objLeft = (screenWidth - obj.width()) / 2;
		objTop = (screenHeight - obj.height()) / 2 + scrolltop;

		obj.css({
			left : objLeft + 'px',
			top : objTop + 'px',
			'display' : 'block'
		});

	});
	// 浏览器有滚动条时的操作
	$(window).scroll(function() {
		screenWidth = $(window).width();
		screenHeight = $(window).height();
		scrolltop = $(document).scrollTop();

		objLeft = (screenWidth - obj.width()) / 2;
		objTop = (screenHeight - obj.height()) / 2 + scrolltop;

		obj.css({
			left : objLeft + 'px',
			top : objTop + 'px',
			'display' : 'block'
		});

	});

}

function alertMsg(msg) {
	Tip.alert({
		message : msg
	});
}

function confirmMsg(title, msg, fucName) {
	Tip.confirm({
		message : msg,
		title : title
	}).on(function(e) {
		if (e) {
			fucName();
		}
	});
}

function confirmMsg(msg, fucName) {
	Tip.confirm({
		message : msg
	}).on(function(e) {
		if (e) {
			fucName();
		}
	});
}

function logOut() {
	confirmMsg("You really want to log out?", function() {
		location.href = ctx + "/logout.do";
	});
}

function modify(name) {
	Tip.edit({
		title : 'Reply Content',
		name : name
	}).on(function(e) {
		if (e) {
			doModify(name);
		}
	});
}

function doModify(name) {
	var arg = {};
	var arg1 = name;
	var arg2 = "id";
	var value1 = $("#box-input").val();
	var value2 = $("#id").val();
	arg[arg1] = value1;
	arg[arg2] = value2;
	$.ajax({
		url : updateUrl,
		type : "post",
		dataType : "json",
		data : arg,
		async : false,
		success : function(data) {
			$(".mask-body,.box-body").remove();
			if (data.stateCode == sucCode) {
				location.reload();
			} else {
				alertMsg(data.message);
			}
		}
	});
}

// 列表页删除按钮
function doDelete() {
	var ids = "";
	var check = $('input[name="item"]:checked');
	if (check == null || check.length <= 0) {
		alertMsg("You haven't choose any item!");
		return false;
	}

	confirmMsg("You really want to delete these items?", function() {
		$.each(check, function(index, item) {
			var id = $(item).val();
			ids += "ids=" + id + "&";
		});
		$.ajax({
			url : deleteUrl + "?" + ids,
			type : "POST",
			dataType : "json",
			data : {},
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

function deleteOne() {
	confirmMsg("You really want to delete this item?", function() {
		var ids = "ids=" + $("#id").val();
		$.ajax({
			url : deleteUrl + "?" + ids,
			type : "POST",
			dataType : "json",
			data : {},
			async : false,
			success : function(data) {
				if (data.stateCode == sucCode) {
					var url = location.href;
					url = url.substring(0, url.lastIndexOf("?")).replace(
							"detail", "list");
					location.href = url;
				} else {
					alertMsg(data.message);
				}
			}
		});
	});
}
var str = window.location.search;
function getArgs(name) {
	var arg;
	if (str.indexOf(name) != -1) {
		var pos_start = str.indexOf(name) + name.length + 1;
		var pos_end = str.indexOf("&", pos_start);
		if (pos_end == -1) {
			arg = str.substring(pos_start, str.length);
		} else {
			arg = str.substring(pos_start, pos_end);
		}
	} else {
		arg = "";
	}
	return arg;
}

$(function() {
	var url = location.href;
	var end = url.lastIndexOf("?") > -1 ? url.lastIndexOf("?") : url.length;
	url = url.substring(0, end);
	// 菜单选中
	var $cmenu = $(".son-menu a[href='" + url + "']");
	if ($cmenu) {
		$cmenu.addClass("active");
		$cmenu.closest(".son-menu").parent().prev().find("a.child-p-menu")
				.addClass("active");
	}
	$(".user-info").on("click", function() {
		location.href = ctx + "/system/myInfo.do";
	});

	$.each($(".child-p-menu"), function(index, item) {
		if ($(item).hasClass("active")) {
			$(item).parent().next().show();
		}
	});
	$(".child-p-menu").on("click", function() {
		var $item = $(this);
		if ($item.hasClass("active")) {
			$item.removeClass("active");
		} else {
			$item.addClass("active");
		}
		$item.parent().next().toggle();
	});

	var groups = $(".info-group");
	$.each(groups, function(index, item) {
		if (index % 2 == 0) {
			$(item).css("background-color", "#F9FAFA");
		}
	});

	$(".del-btn").on("click", doDelete);

	$(".common-btn.return").on(
			"click",
			function() {
				url = url.replace("detail", "list")
						.replace("add.do", "list.do");
				var refUrl = document.referrer;
				if (refUrl.indexOf('login') > -1
						|| refUrl.indexOf('logout') > -1
						|| refUrl.indexOf('updatePassword') > -1
						|| refUrl.indexOf('detail.do') > -1) {
					location.href = url;
				} else {
					location.href = refUrl;
				}

			});
	$(".data-table td[data-id]").on("click", function() {
		var id = $(this).data("id");
		if (id) {
			location.href = detailUrl + "?id=" + id;
		}
	});
	if ("undefined" != typeof cpage && cpage <= 1) {
		$(".former-page").hide();
	}
	if ("undefined" != typeof cpage && "undefined" != typeof tpage
			&& cpage >= tpage) {
		$(".latter-page").hide();
	}
	$(".former-page").on(
			"click",
			function() {
				var parames=new Array();
				var inputs=$(".search-tabs .form-input");
				if (inputs) {
					$.each(inputs,function(index,item){
						parames.push({name:$(item).attr("name"),value:$(item).val()});
					});
				}
				if (listUrl.indexOf("?") > -1) {
					listUrl = listUrl + "&cpage="
							+ (cpage - 1 <= 0 ? 1 : cpage - 1);
				} else {
					listUrl = listUrl + "?cpage="
							+ (cpage - 1 <= 0 ? 1 : cpage - 1);
				}
				Post(listUrl, parames);
			});
	$(".latter-page").on(
			"click",
			function() {
				var parames=new Array();
				var inputs=$(".search-tabs .form-input");
				if (inputs) {
					$.each(inputs,function(index,item){
						parames.push({name:$(item).attr("name"),value:$(item).val()});
					});
				}
				if (listUrl.indexOf("?") > -1) {
					listUrl = listUrl + "&cpage="
							+ (cpage + 1 >= tpage ? tpage : cpage + 1);
				} else {
					listUrl = listUrl + "?cpage="
							+ (cpage + 1 >= tpage ? tpage : cpage + 1);

				}
				Post(listUrl, parames);
			});

	$(".latter-page").on("mouseover", function() {
		$(this).attr("src", ctx + "/static/imgs/right_s.png");
	});
	$(".latter-page").on("mouseout", function() {
		$(this).attr("src", ctx + "/static/imgs/right_n.png");
	});
	$(".former-page").on("mouseover", function() {
		$(this).attr("src", ctx + "/static/imgs/left_s.png");
	});
	$(".former-page").on("mouseout", function() {
		$(this).attr("src", ctx + "/static/imgs/left_n.png");
	});

	$(".chose-all").on("click", function() {
		$('input[name="item"]').prop("checked", this.checked);
		$('.chose-all').prop("checked", this.checked);
	});

	var $items = $("input[name='item']");
	$items.on("click", function() {
		$(".chose-all").prop(
				"checked",
				$items.length == $("input[name='item']:checked").length ? true
						: false);
	});

	// 详情页编辑
	$(".common-btn.modify").on(
			"click",
			function() {
				$("div.btn-detail").hide();
				$("div.btn-modify").show();
				$(".common-btn.cancle").on("click", function() {
					location.reload();
				});

				$(".user-photo").css({
					"margin" : ""
				});
				$(".form-text.update,.form-input.update,.form-select").prop(
						"disabled", "");
				$(".form-text.update,.form-input.update").addClass("active");
				$("input[type='checkbox']").prop("disabled", "");
				var $easyuiExtEditorList = $(".easyui-editor");
				if ($easyuiExtEditorList.length) {
					$easyuiExtEditorList.each(function() {
						var id = $(this).attr('id');
						if (id) {
							UM.getEditor(id).setEnabled();
						}
					});
				}
				$(".form-text.update,.form-input.update")[0].focus();
				if ($("#uploadify").length > 0) {
					initUpload();
				}
			});

	// placeholder 兼容
	placeholderfun(url);

	$.easyuiEditorInit();

});
// placeholder
function placeholderfun(url) {

	if (!('placeholder' in document.createElement('input'))) {
		function GetStringNumValue(pxstr) {
			return pxstr.substring(0, pxstr.length - 2);
		}

		$('input[placeholder],textarea[placeholder]')
				.each(
						function() {
							var $element = $(this), placeholder = $element
									.attr('placeholder');
							if ($element.attr('type') != 'password') {// 非密码
								if ($element.val() === "") {
									$element.val(placeholder).addClass(
											'placeholder');
									$element.css('color', '#ccc');
								}
								$element
										.focus(
												function() {
													if ($element.val() === placeholder) {
														$element
																.val("")
																.removeClass(
																		'placeholder');
														$element.css('color',
																'#000');
													}
												})
										.blur(
												function() {
													if ($element.val() === "") { // if($element.val()===""
														// &&
														// ($element.attr('type')
														// !=
														// 'password')){
														$element
																.val(
																		placeholder)
																.addClass(
																		'placeholder');
														$element.css('color',
																'#ccc');
													} else if ($element.val() == placeholder) {
														$element.css('color',
																'#ccc');
													} else {
														$element.css('color',
																'#000');
													}
												})
										.closest('form')
										.submit(
												function() {
													if ($element.val() === placeholder) {
														$element.val('');
													}
												});
							} else {// 密码框
								if (placeholder) {
									// 文本框ID
									var elementId = $element.attr('id');
									if (!elementId) {
										var now = new Date();
										elementId = 'lbl_placeholder'
												+ now.getSeconds()
												+ now.getMilliseconds();
										$element.attr('id', elementId);
									}
								}// end of if (placeholder)
								// 添加label标签，用于显示placeholder的值
								var $label = $('<label>', {
									html : $element.val() ? '' : placeholder,
									'for' : elementId,
									css : {
										position : 'absolute',
										cursor : 'text',
										color : '#cccccc',
										fontSize : $element.css('fontSize'),
										fontFamily : $element.css('fontFamily')
									}
								}).insertAfter($element);
								if (url.indexOf('login.jsp') > -1) {
									$label.css({
										top : '59px',
										left : '100px',
										fontWeight : 'bold'
									});
								} else {
									$label.css({
										top : '30px',
										left : '260px'
									});
								}

								// 绑定事件
								var _setPosition = function() {
									$label.css({
										marginTop : '-30px',
										marginLeft : '10px'
									});
								};
								var _resetPlaceholder = function() {
									if ($element.val()) {
										$label.html(null);
									} else {
										_setPosition();
										$label.html(placeholder);
									}
								};
								_setPosition();
								$element
										.on(
												'focus blur input keyup propertychange resetplaceholder',
												_resetPlaceholder);
							}
						});
	}
}
// 浏览器版本是否低于IE8
var lessThenIE8 = function() {
	var UA = navigator.userAgent, isIE = UA.indexOf('MSIE') > -1, v = isIE ? /\d+/
			.exec(UA.split(';')[1])
			: 'no ie';
	return v <= 9;
}();

window.onload = function() {
	function auto_height() {
		/*
		 * var main_panel = document.getElementById("main-panel"); if
		 * (main_panel) { main_panel.style.height =
		 * document.documentElement.clientHeight - 75 + "px"; }
		 */
		var detail_panel = document.getElementById("detail-panel");
		if (detail_panel) {
			/*
			 * detail_panel.style.width = document.documentElement.clientWidth -
			 * 260 + "px";
			 */
			detail_panel.style.height = document.documentElement.clientHeight
					- 75 + "px";
		}
	}

	auto_height();
	onresize = auto_height;
};

// 防止表单重复提交
$.ajaxSetup({
	timeout : 1000,
	beforeSend : function() {
		$('input[type="submit"]').prop("disabled", true);
	},
	error : function(jqXHR, textStatus, errorMsg) { // 出错时默认的处理函数
		alertMsg('发送AJAX请求到"' + this.url + '"时出错[' + jqXHR.status + ']：'
				+ errorMsg);
	},
	complete : function() {
		$('input[type="submit"]').prop("disabled", false);
	}
});
function initUpdate() {
	$(".form-text.update,.form-input.update,.form-select").prop("disabled",
			"disabled");
};

// 富文本框
$.easyuiEditorInit = function() {
	var $easyuiExtEditorList = $(".easyui-editor");
	if ($easyuiExtEditorList.length) {
		$easyuiExtEditorList.each(function(i) {
			if ($(this).attr("easyui-editor-create") != 'true') {
				createOnlineEditor($(this).attr("id"));
				$(this).attr("easyui-editor-create", "true");// 表示已经创建，防止重新创建
			}
		});
	}
};

function createOnlineEditor(textAreaId, resPath) {
	if ($("#" + textAreaId).length == 0) {
		alert("富文本编辑器请设置id属性");
		return;
	}
	var readonly = $("#" + textAreaId).is('[readonly]');
	$(document)
			.ready(
					function() {
						var um = UM.getEditor(textAreaId, {
							wordCount : false,
							elementPathEnabled : false,
							initialFrameWidth : 700,
							initialFrameHeight : 340,
							resPath : resPath,
							readonly : readonly
						});
						um
								.addListener(
										"focus",
										function(type, event) {
											$(".edui-container")
													.css(
															{
																"border" : "1px solid #66afe9",
																"box-shadow" : " inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6)"
															});
										});
						um.addListener("blur", function(type, event) {
							$(".edui-container").css({
								"border" : "1px solid #ccc",
								"box-shadow" : "none"
							});
						});
					});

}

function initUpload() {
	$("#uploadify").uploadify(
			{
				'uploader' : ctx + '/system/upload.do',
				'script' : ctx + '/system/upload.do',
				'swf' : ctx + '/static/uploadify/uploadify.swf',
				'cancelImg' : ctx + '/static/uploadify/uploadify-cancel.png',
				'folder' : 'uploads',// 您想将文件保存到的路径
				'queueID' : 'fileQueue',// 与下面的id对应
				'queueSizeLimit' : 5,
				'fileObjName' : 'upfile',
				// 设置在后台脚本使用的文件名。举个例子，在php中，如果这个选项设置为'the_files',你可以使用$_FILES['the_files']存取这个已经上传的文件。
				fileSizeLimit : '5MB',
				// 设置上传文件的容量最大值。这个值可以是一个数字或者字符串。如果是字符串，接受一个单位（B,KB,MB,GB）。如果是数字则默认单位为KB。设置为0时表示不限制
				fileTypeExts : '*.png;*.jpg;*.jpeg',
				// 设置允许上传的文件扩展名（也就是文件类型）。但手动键入文件名可以绕过这种级别的安全检查，所以你应该始终在服务端中检查文件类型。输入多个扩展名时用分号隔开('*.jpg;*.png;*.gif')
				fileTypeDesc : 'Only image',
				// 上传文件类型说明
				formData : {
					"path" : "/photo/"
				},
				'auto' : true,
				'multi' : false,
				'simUploadLimit' : 2,
				'buttonText' : 'Choose',
				'onUploadSuccess' : function(file, data, response) { // 上传成功
					var jdata = eval('(' + data + ')');
					var url = jdata.url;
					var $div = $("#userPhotoDiv");
					var $img = $div.find('img.user-photo');
					if ($img.length > 0) {
						$img.attr("src", ctx + url);
					} else {
						$div.append('<img class="user-photo" src="' + ctx + url
								+ '">');
					}
					$("#userPhoto").val(url);
				}
			});
}
window.onbeforeunload = function(event) {
	event = event || window.event;
	var n = event.screenX - window.screenLeft;
	var b = n > document.documentElement.scrollWidth - 20;
	if (b && event.clientY < 0 || event.altKey) {
		//console.log(1);
		// window.event.returnValue = "www"; //这里可以放置你想做的操作代码
	} else {
		//console.log(2);
	}
}

function Post(URL, PARAMTERS) {
    //创建form表单
    var temp_form = document.createElement("form");
    temp_form.action = URL;
    //如需打开新窗口，form的target属性要设置为'_blank'
    temp_form.target = "_self";
    temp_form.method = "post";
    temp_form.style.display = "none";
    //添加参数
    for (var item in PARAMTERS) {
        var opt = document.createElement("textarea");
        opt.name = PARAMTERS[item].name;
        opt.value = PARAMTERS[item].value;
        temp_form.appendChild(opt);
        console.log(opt.name);
    }
    document.body.appendChild(temp_form);
    //提交数据
    temp_form.submit();
}