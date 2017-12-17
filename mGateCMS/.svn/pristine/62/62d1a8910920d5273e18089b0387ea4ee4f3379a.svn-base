(function($) {

	window.Tip = function() {
		var html = '<div class="mask-body"></div>';

		var box = '<div id="[Id]" class="box-body">'
				+ '<div class="box-head"><span class="box-title">[Title]</span><a class="box-close" href="javascript:void(0);">Close</a></div>'
				+ '<div class="box-content"><span>[Message]</span></div>'
				+ '<div class="box-btns"><a class="box-cancel" href="javascript:void(0);">[BtnCancel]</a><a class="box-confirm" href="javascript:void(0);">[BtnOk]</a></div>'
				+ '</div>';

		var editBox = '<div id="[Id]" class="box-body">'
				+ '<div class="box-head"><span class="box-title">[Title]</span><a class="box-close" href="javascript:void(0);">Close</a></div>'
				+ '<div class="box-content"><form id="box-form"><input name="[Name]" id="box-input" class="box-input" value="[initVal]"/></form><div class="box-tip"><span>[Tip]</span></div></div>'
				+ '<div class="box-btns"><a class="box-cancel" href="javascript:void(0);">[BtnCancel]</a><a class="box-confirm" href="javascript:void(0);">[BtnOk]</a></div>'
				+ '</div>';

		var reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
		var generateId = function() {
			var date = new Date();
			return 'mdl' + date.valueOf();
		}
		var init = function(options) {
			options = $.extend({}, {
				title : "Tips",
				message : "Success!",
				btnok : "confirm",
				btncl : "cancel"
			}, options || {});
			var modalId = generateId();
			var content = box.replace(reg, function(node, key) {
				return {
					Id : modalId,
					Title : options.title,
					Message : options.message,
					BtnOk : options.btnok,
					BtnCancel : options.btncl
				}[key];
			});
			$('body').append(html);
			$('body').append(content);
			center($(".box-body"));
			return modalId;
		}

		return {
			alert : function(options) {
				// if (typeof options == 'string') {
				// options = {
				// message : options.message,
				// title:options.title
				// };
				// }
				var id = init(options);
				var modal = $('#' + id);
				modal.find('.box-cancel').hide();
				modal.find('a').on('click', function() {
					$(modal).remove();
					$('.mask-body').remove();
				});
				return {
					id : id,
					on : function(callback) {
						if (callback && callback instanceof Function) {
							modal.find('.box-confirm').click(function() {
								callback(true);
							});
						}

					}
				};
			},
			confirm : function(options) {
				var id = init(options);
				var modal = $('#' + id);
				modal.find('.box-cancel').show();
				modal.find('a').on('click', function() {
					$(modal).remove();
					$('.mask-body').remove();
				});
				return {
					id : id,
					on : function(callback) {
						if (callback && callback instanceof Function) {
							modal.find('.box-confirm').click(function() {
								callback(true);
							});
							modal.find('.box-cancel').click(function() {
								callback(false);
							});
						}
					}
				};
			},
			edit : function(options) {
				var id = generateId();
				options = $.extend({}, {
					title : 'edit',
					initVal : '',
					name:'',
					tip:''
				}, options || {});
				var content = editBox.replace(reg, function(node, key) {
					return {
						Id : id,
						initVal : options.initVal,
						Title : options.title,
						BtnOk : 'Confirm',
						BtnCancel : 'Cancel',
						Name:options.name,
						Tip:options.tip
					}[key];
				});
				$('body').append(html);
				$('body').append(content);
				center($(".box-body"));
				var modal = $('#' + id);
				$(modal).width("350px");
				modal.find('.box-cancel').show();
				modal.find('.box-cancel,.box-close').on('click', function() {
					$(modal).remove();
					$('.mask-body').remove();
				});
				return {
					id : id,
					on : function(callback) {
						if (callback && callback instanceof Function) {
							modal.find('.box-confirm').click(function() {
								callback(true);
							});
							modal.find('.box-cancel').click(function() {
								callback(false);
							});
						}
					}
				};
			}
		}
	}();
})(jQuery);