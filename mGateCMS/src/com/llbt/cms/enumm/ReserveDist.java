package com.llbt.cms.enumm;

import java.util.HashMap;
import java.util.Map;

/**
 * 静态字段类
 * 
 * @author it
 * 
 */
public class ReserveDist {

	public final static String cancelDateNum = "30";
	public final static String warnDateNum = "10";
	public final static String cancelNum = "2";

	public final static String BANK = "banklist";// 银行

	public final static String USER_SESSION_INFO = "userSessionInfo";// 用户信息Session字段
	public final static String USER_MENUS_LIST = "userMenusList";
	public final static String USER_MENUS_MENUCODE_STRING = "userMenuCodeString";
	public final static String USER_TYPE_SUPERMANAGER = "1";
	public final static String USER_TYPE_NORMAL = "0";
	public final static String USER_STATE_NORMAL = "0";
	public final static String USER_STATE_PAUSED = "1";

	public static final char[] VERICODE_ARRAY = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
			.toCharArray();
	public static final String VERICODE_KEY = "veriCode";// 验证码字段
	public static final String VERICODE_EFFECTIVE_TIME_KEY = "codeEffectiveTime";// 验证码有效时间key
	public static final int VERICODE_EFFECTIVE_TIME = 60 * 1000;// 验证码有效时间

	public static final String USER_LOGIN_COOKIE_NAME = "user_login_info";// 用户记住密码cookie名
	public static final int COOKIE_EFFECTIVE_TIME = 60 * 60 * 24 * 3;// cookie默认生效时间

	public static final String USER_INITIALIAZTION_PASSWORD = "111111";// 用户记住密码cookie名
	

	public static final int DEFAULT_PAGE_SIZE = 10;

	public static final String MENU_TYPE_MENU = "1";
	public static final String MENU_TYPE_BUTTON = "2";

	public static final String FILE_UPLOAD_PATH_KEY = "FILE_UPLOAD_PATH";
	public static final String FILE_UPLOAD_PATH_TEMP = "/temp/";
	public static final String FILE_UPLOAD_PATH_NOTICE = "/notice/";
	public static final String FILE_UPLOAD_PATH_USER_PHOTO = "/photo/";
	public static final long FILE_SIZE_LIMIT = 1024 * 5 * 1024;

	/**
	 * 返回与和谐的对应关系
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static Map getReserveState() {
		Map map = new HashMap();
		map.put("0", "0");
		map.put("1", "2,3,5");
		return map;
	}
}
