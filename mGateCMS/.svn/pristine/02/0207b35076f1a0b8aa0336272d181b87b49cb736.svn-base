package com.llbt.cms.enumm;

/**
 * 结果消息返回类(枚举)
 * @author it
 *
 */
public enum ReturnType {

	
	OK(10000,"Request success!"),
	ERROR(-10000,"Request exception!"),
	ERROR_PARAM(-10001,"Parameter exception!"),
	ERROR_PARAMLOST(-10002,"Parameter missing!"),
	ERROR_EMPTY(-10003,"The return value is empty!"),
	ERROR_FILE(-10004,"File upload failed!"),
	ERROR_MODIFY(-10005,"Must be modified, and the values should not all be consistent!"),
	
	LOGIN_ERROR_PASSWORD(-10006,"Wrong Password!"),
	LOGIN_ERROR_USER_STATE(-10007,"This account is paused!"),
	LOGIN_ERROR_WRONG(-10008,"Landing too many failures, the account has been paused!");
	private int code;
	private String info;
	ReturnType(int code,String info){
		this.code=code;
		this.info=info;
	}
	public void setCode(int code) {
		this.code = code;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getCode(){
		return code;
	}
	
	public String getInfo(){
		return info;
	}
	
}
