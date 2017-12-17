package com.llbt.cms.common;

public class ChannelResponse {
	
	private int code;
	
	private String info;
	
	private Object result;

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}
	
	
	public boolean OK(){
		if(this.getCode() == 0){
			return false;
		}else if(this.getCode()==10000){
			return true;
		}else{
			return false;
		}
	}
	

}
