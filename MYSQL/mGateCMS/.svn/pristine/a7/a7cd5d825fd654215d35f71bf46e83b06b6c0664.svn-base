package com.llbt.cms.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.i18n.Ii8n;

@Aspect
@Component
public class I18nAspect {  
	// 环绕通知
	@Around("execution(* com.llbt.cms.controller.*.*(..))")
	public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
		Object proceed = joinPoint.proceed();
		if (proceed instanceof ResponseData) {
			ResponseData result = (ResponseData) proceed;
			result.setMessage(Ii8n.getErrorText(result.getMessage()));
			return result;
		}
		return proceed;
	}
}
