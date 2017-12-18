$(function() {
	//alert(locale);
	jQuery.i18n.properties({// 加载资浏览器语言对应的资源文件
		//name : "lang", // 资源文件名称
		name : locale, // 资源文件名称
		path : ctx + '/static/i18n/properties/', // 资源文件路径
		mode : 'map', // 用 Map 的方式使用资源文件中的值
		callback : function() {// 加载成功后设置显示内容
			$('h2').html($.i18n.prop('index'));
		}
	});
});
