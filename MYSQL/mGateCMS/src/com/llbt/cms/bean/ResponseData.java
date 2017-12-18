package com.llbt.cms.bean;

import com.llbt.cms.enumm.ReturnType;

public class ResponseData {

	private int stateCode;
	private String message;
	private Object retData;

	public static ResponseData createSuccessRes(String message, Object retData) {
		return new ResponseData(ReturnType.OK.getCode(), message, retData);
	}
	
	public static ResponseData createSuccessRes(int stateCode, String message) {
		return new ResponseData(stateCode, message);
	}
	public static ResponseData createSuccessRes(String message) {
		return new ResponseData(ReturnType.OK.getCode(), message);
	}
	
	public static ResponseData createSuccessRes() {
		return new ResponseData(ReturnType.OK.getCode(), ReturnType.OK.getInfo());
	}

	public static ResponseData createFailRes(ReturnType returnType) {
		return new ResponseData(returnType.getCode(), returnType.getInfo(),
				null);
	}

	public static ResponseData createFailRes(String failInfo) {
		return new ResponseData(-1, failInfo);
	}

	public static ResponseData createErrorRes() {
		return new ResponseData(ReturnType.ERROR.getCode(),
				ReturnType.ERROR.getInfo());
	}

	public ResponseData() {
		super();
	}

	public ResponseData(int stateCode, String message) {
		super();
		this.stateCode = stateCode;
		this.message = message;
	}

	public ResponseData(int stateCode, String message, Object retData) {
		super();
		this.stateCode = stateCode;
		this.message = message;
		this.retData = retData;
	}

	public int getStateCode() {
		return stateCode;
	}

	public void setStateCode(int stateCode) {
		this.stateCode = stateCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getRetData() {
		return retData;
	}

	public void setRetData(Object retData) {
		this.retData = retData;
	}
}
