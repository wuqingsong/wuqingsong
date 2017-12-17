package com.llbt.cms.config;

public enum ReturnParam {
	
	REQUEST_OK("000100","请求成功"),
	REQUEST_ERRORSIGN("000101","验签失败"),
	REQUEST_ERRORKEY("000102","Key验证失败"),
	REQUEST_ERRORENTITY("000103","Entity不合法"),
	REQUEST_ERRORVERSION("000104","版本号缺失"),
	REQUEST_ERRORCHANNEL("000105","渠道缺失"),
	REQUEST_ERRORFUNDCODE("000106","功能码缺失"),
	REQUEST_WRONGFUNDCODE("000107","无所传入功能码"),
	REQUEST_ERRORJSON("000108","渠道获取信息解析错误"),
	REQUEST_ERRORTOKEN("000109","token不合法"),
	REQUEST_WEONGNULLUSERINFO("000110","用户信息不存在"),
	REQUEST_ERROTIMEOUT("000111","渠道获取信息超时"),
	REQUEST_ERRORDONOTSOMETHING("000112","业务逻辑未处理"),
	REQUEST_ERRORSYSTEM("000999","系统错误"),
	FUNCPARAMS_ERROR("000200","请求参数不合法"),
	LOGIN_UNPWERROR("000201","用户名或密码错误"),
	LOGIN_OLDPWDERROR("000202","旧密码输入错误"),
	LOGIN_NOTNULLNEWPWD("000203","新旧密码不能为空"),
	LOGIN_NOTNULLVERIFYTYPE("000204","验证码类型不能为空"),
	LOGIN_ERRORVALIDATECODE("000205","验证码错误"),
	LOGIN_NOTALLOWSAME("000206","新旧密码不能相同"),
	REQUEST_NOTALLOWKEYORVALUE("000207","设置数据字典key或者value不能为空"),
	REQUEST_NOTALLOWVALUE("000208","不能有空字段"),
	REQUEST_NOTNULLORAID("000209","OrgId不能为空"),
	REQUEST_NOTITEM("000210","没找到"),
	REQUEST_ERROR("999999",""),
	REQUEST_CANCELRESERVEWARN("000132",""),
	EXTRACT_AMTERROR("000301","提取金额输入错误"),
	EXTRACT_PHONENUMBERERROR("000302","手机号输入错误"),
	EXTRACT_ACCOUNTCANCELED("000302","账户为销户未结算"),
	EXTRACT_NOSELFSERVICE("000302","没有办理自助协议"),
	EXTRACT_PHONE("000303","手机号码输入不正确"),
	EXTRACT_EMAIL("000304","邮箱输入不正确"),
	EXTRACT_ALLOW("000305","系统正在建设中，敬请期待！")
	;
	public void setCode(String code) {
		this.code = code;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	String code;
	String message;
	
	ReturnParam(String code,String message){
		this.code=code;
		this.message=message;
	}
	
	public String getCode(){
		return this.code;
	}
	
	public String getMessage(){
		return this.message;
	}
}
