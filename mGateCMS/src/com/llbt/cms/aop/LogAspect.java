package com.llbt.cms.aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;

import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.OperateLogService;

public class LogAspect {

	@Autowired
	private OperateLogService operateLogService;

	@Autowired
	protected HttpSession session;

	private static final String METHOD_FILTER_STRING = "getVeriCode|toLoginPage|doLogOut|init";

	// 在类里面写方法，方法名可以任意。标准用的before和after来表示
	// 此处的JoinPoint类可以获取，action所有的相关配置信息和request等内置对象。
	public void before(JoinPoint joinpoint) {
		/*
		 * Object[] obj = joinpoint.getArgs();//
		 * 此方法返回的是一个数组，数组中包括request以及ActionCofig等类对象
		 * System.out.println("调用的方法名：" + joinpoint.getSignature().getName());
		 * System.out.println("调用的方法参数：" + joinpoint.getArgs()[0]);
		 */
	}

	public void after(JoinPoint joinpoint) {
		User user = (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
		if (user != null) {
			String methodName = joinpoint.getSignature().getName();
			if (!(METHOD_FILTER_STRING.indexOf(methodName) > -1)
					&& !methodName.startsWith("to")
					&& !methodName.startsWith("validate")) {
				Object[] args = joinpoint.getArgs();
				
//				OperateLog operateEntity = MmsUtils.getOperateEntity(args,
//						user.getId(), methodName);
//				operateLogService.insert(operateEntity);

			}
		}

	}

}
