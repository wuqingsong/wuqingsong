(function($) {

	var treeCheckbox = {};

	// 构建模板
	treeCheckbox.buildUI = function(root, data) {
		//兼容性问题
		if (!Array.isArray) {
			  Array.isArray = function(arg) {
			    return Object.prototype.toString.call(arg) === '[object Array]';
			  };
			}
		if (data.length > 0) {
			for (var i = 0, len = data.length; i < len; i++) {
		
				
				var $li = $('<li class="tree-checkbox-item"><div class="tree-checkbox-wrapper"><label for="name_'
						+ data[i].id
						+ '"><input name="menuIds"  type="checkbox" id="name_'
						+ data[i].id
						+ '" value="'
						+ data[i].id
						+ '" data-checked="'
						+ data[i].distribution
						+ '"> '
						+ data[i].menuName + '</label></div></li>')

				if (data[i].childMenus) {

					var $ul = $('<ul class="tree-checkbox-list">');

					$li.append($ul);
				}

				root.append($li);
				

				if (typeof data[i] === 'object') {
					for ( var k in data[i]) {
						if (Array.isArray(data[i][k])) {
							arguments.callee($ul, data[i][k]);
						}
					}
				}
			}
		}

		return root;
	}

	// 初始化
	treeCheckbox.init = function(root, editable) {

		// 是否默认勾选
		var $checkbox = $('input[type="checkbox"]');

		for (var i = 0, len = $checkbox.length; i < len; i++) {

			var checked = $($checkbox[i]).attr('data-checked') == '1';

			var $target = $($checkbox[i]);
			if (!editable) {
				$target.prop('disabled', 'disabled');
			}
			$target.prop('checked', checked);

			var $parent = $target.closest('.tree-checkbox-list').siblings(
					'.tree-checkbox-wrapper').find('input[type="checkbox"]');

			var $siblings = $target.closest('.tree-checkbox-item').siblings(
					'.tree-checkbox-item').find('input[type="checkbox"]');

			parentIsChecked($target, $siblings, $parent);

		}
		// 绑定事件
		$(root).on(
				'click',
				function(e) {

					var $target = $(e.target || window.target);

					$target = $target.closest('.tree-checkbox-wrapper').find(
							'input[type="checkbox"]');

					$target.attr('data-checked', +$target.prop('checked'));

					var $parent = $target.closest('.tree-checkbox-list')
							.siblings('.tree-checkbox-wrapper').find(
									'input[type="checkbox"]');

					var $siblings = $target.closest('.tree-checkbox-item')
							.siblings('.tree-checkbox-item').find(
									'input[type="checkbox"]');

					var $children = $target.closest('.tree-checkbox-wrapper')
							.siblings('.tree-checkbox-list').find(
									'input[type="checkbox"]');

					// 父元素是否勾选
					parentIsChecked($target, $siblings, $parent);

					// 子元素是否勾选
					childrenIsChecked($target, $children);

				})

		function parentIsChecked(target, siblings, parent) {

			if ($(target).length === 0) {
				return;
			}

			var checkAll = true, distribution = 0, checkHalf = false;
			var dis=$(parent).attr('data-checked');

			for (var i = 0, len = siblings.length; i < len; i++) {
					
				if (!$(siblings[i]).prop('checked')
						|| $(target).prop('indeterminate')) {

					checkAll = false;

				}

				if ($(siblings[i]).prop('checked')) {

					checkHalf = true;

				}
			}

			checkAll = $(target).prop('checked') && checkAll;

			checkHalf = $(target).prop('checked') || checkHalf
					|| $(target).prop('indeterminate');

			checkAll && (checkHalf = false);

			distribution = checkAll || checkHalf||dis==1 ? 1 : 0;

			parent.prop('checked', checkAll || checkHalf||dis==1).attr('data-checked',
					distribution);

			parent.prop('indeterminate', checkHalf||dis==1);

			$target = $(parent);

			var $parent = $target.closest('.tree-checkbox-list').siblings(
					'.tree-checkbox-wrapper').find('input[type="checkbox"]');

			var $siblings = $target.closest('.tree-checkbox-item').siblings(
					'.tree-checkbox-item').find('input[type="checkbox"]');

			parentIsChecked($target, $siblings, $parent);

		}
		;

		function childrenIsChecked(target, children) {
			var checked = $(target).prop('checked');
			
			if (children.length>0) {
				$(target).prop('indeterminate',checked);
			}//修改部分
			
			for (var i = 0, len = children.length; i < len; i++) {
				if (!checked) {//修改部分
					$(children[i]).prop('checked', checked);
				}
				
				if (checked) {
					$(children[i]).prop('indeterminate',false);
				}

			}

		}
	}

	window.treeCheckbox = treeCheckbox;

})(jQuery);