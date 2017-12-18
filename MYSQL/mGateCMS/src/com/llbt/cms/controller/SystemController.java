package com.llbt.cms.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.cache.SystemDictCache;
import com.llbt.cms.cache.SystemParamsCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.UserService;
import com.llbt.cms.util.MmsUtils;
import com.llbt.cms.util.PasswordEncryption;

@Controller
@RequestMapping("/system")
public class SystemController extends BaseController {
	private ResponseData responseData = null;

	@Autowired
	private SystemParamsCache systemParamsCache;
	@Autowired
	private MenuCache menuCache;
	@Autowired
	private SystemDictCache systemDictCache;

	@Autowired
	private UserService userService;

	@Value("#{config['uploadPath']}")
	public String uploadPath;

	@RequestMapping(value = "/initialize", method = RequestMethod.GET)
	public String toSystem() {
		return "/system/initialize";
	}

	@RequestMapping(value = "/initialize", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData refreshCache() {
		systemParamsCache.doRefresh();
		menuCache.doRefresh();
		systemDictCache.doRefresh();

		responseData = ResponseData.createSuccessRes("Succeed!");
		return responseData;
	}

	@RequestMapping(value = "/upload")
	@ResponseBody
	public String uploadFileSave(
			@RequestParam(required = false) MultipartFile upfile,
			HttpServletRequest request,
			@RequestParam(required = false) String path) {
		// 从系统参数中获取上传路径
		String resultString = null;
		String oriFileName = upfile.getOriginalFilename();
		String title = upfile.getName();
		// 上传文件大小
		if (upfile.getSize() > ReserveDist.FILE_SIZE_LIMIT) {
			resultString = "{'original':'" + oriFileName
					+ "','url':'','title':'" + title
					+ "','state':'File size must less than 5MB!'}";
			return resultString;
		}
		// 文件格式限制

		if (!MmsUtils.isImage(oriFileName)) {
			resultString = "{'original':'" + oriFileName
					+ "','url':'','title':'" + title
					+ "','state':'File type must be images'}";
			return resultString;
		}

		try {
			String filePath = MmsUtils.saveFile(upfile, uploadPath, path);
			resultString = "{'original':'" + oriFileName + "','url':'"
					+ filePath + "','title':'" + title + "','state':'SUCCESS'}";
		} catch (Exception e) {
			resultString = "{'original':'" + oriFileName
					+ "','url':'','title':'" + title + "','state':'IO'}";
		}

		return resultString;
	}

	@RequestMapping(value = "myInfo")
	public ModelAndView myInfo(HttpSession session) {
		ModelAndView modelAndView = new ModelAndView("/system/userInfo");
		User user = userService.getById(super.getLogonUserId(session));
		modelAndView.addObject("user", user);
		return modelAndView;
	}

	@RequestMapping(value = "updateMyInfo", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData updateMyInfo(User user, HttpSession session) {
		String userId = super.getLogonUserId(session);
		user.setUpdateBy(userId);
		user.setUpdateDate(new Date());
		try {
			userService.update(user);
			// 重载session信息
			User updatedUser = userService.getById(userId);
			session.setAttribute(ReserveDist.USER_SESSION_INFO, updatedUser);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
		}
		return responseData;
	}

	@RequestMapping(value = "/updatePassword", method = RequestMethod.GET)
	public String toUpdatePasswordPage() {
		return "/system/updatePassword";
	}

	@RequestMapping(value = "/updatePassword", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData updatePassword(User user, String newPassword,
			HttpSession session) {
		user.setUpdateBy(super.getLogonUserId(session));
		user.setUpdateDate(new Date());
		user.setId(super.getLogonUserId(session));
		User gateuser = userService.getById(super.getLogonUserId(session));
		try {
			if (PasswordEncryption.authenticate(user.getUserPassword(),
					gateuser.getUserPassword())) {
				user.setUserPassword(PasswordEncryption
						.getEncryptedPassword(newPassword));
				userService.update(user);
				responseData = ResponseData.createSuccessRes("Succeed!");
			} else {
				responseData = new ResponseData(-2001,
						"The password for the original input is inconsistent!");
			}

		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
		}
		return responseData;
	}
}
