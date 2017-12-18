package com.llbt.cms.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.i18n.Ii8n;
import com.llbt.cms.service.DeviceBindService;

@Controller
@RequestMapping("/deviceBind")
@SuppressWarnings("unused")
public class DeviceBindController extends BaseController{
	@Autowired
	private DeviceBindService deviceBindService;
	private ResponseData responseData = null;
	private HttpSession session;
	@ModelAttribute
	public void init(HttpSession session) {
		this.session = session;
	}
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String toDeviceBindList() {

		return "/deviceBind/list";
	}

	@RequestMapping(value = "list", method = RequestMethod.POST)
	@ResponseBody
	public List<Map<String, String>> getDeviceList(String phone, String val) {
		List<Map<String, String>> list;
		if (val.equals("1")) {
			list = deviceBindService.getDevice(phone);
			for(Map<String, String> newList : list){
				String bindState = newList.get("bindState");
				String phoneSystem = newList.get("phoneSystem");
				if(phoneSystem!=null){
				if(phoneSystem.equals("1")){
					newList.put("phoneSystem", Ii8n.getErrorText("IOS"));
				}else if(phoneSystem.equals("2")){
					newList.put("phoneSystem", Ii8n.getErrorText("Android"));
				}}
				if(bindState!=null&&"1".equals(bindState)){
					newList.put("bindState", Ii8n.getErrorText("Bound"));
				}else{
					newList.put("bindState", Ii8n.getErrorText("Unbound"));
				}
			}
		} else {
			list = deviceBindService.getAdmin(phone);
			for(Map<String, String> newList : list){
				String bindState = newList.get("bindState");
				String phoneSystem = newList.get("phoneSystem");
				if(phoneSystem!=null){
				if(phoneSystem.equals("1")){
					newList.put("phoneSystem", Ii8n.getErrorText("IOS"));
				}else if(phoneSystem.equals("2")){
					newList.put("phoneSystem", Ii8n.getErrorText("Android"));
				}}
				if(bindState!=null&&"1".equals(bindState)){
					newList.put("bindState", Ii8n.getErrorText("Bound"));
				}else{
					newList.put("bindState", Ii8n.getErrorText("Unbound"));
				}
			}
			
		}
		return list;
	}
	@RequestMapping(value = "unBind", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData updDeviceBind(String id) {
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("userId",super.getLogonUserId(session));
			map.put("id", id);
			map.put("bindData", new Date());
			deviceBindService.updDeviceBind(map);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
		}
		return responseData;
	}

}
