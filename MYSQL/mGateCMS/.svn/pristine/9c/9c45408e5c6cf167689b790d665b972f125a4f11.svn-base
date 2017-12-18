package com.llbt.cms.util;

import org.slf4j.Logger;

import com.llbt.cms.config.SysConfig;

public class LogUtil {

	static String PACKAGE="05.11.17.1";
	
	public static void info(Logger logger,String text){
		logger.info(text);
	}
	
	public static void info(Logger logger,String text,Object obj){
		logger.info(text,obj);
	}
	
	public static void info(Logger logger,String text,Object[] objs){
		logger.info(text,objs);
	}
	
	public static void dataLog(Logger logger,String tag,String text){
		if(SysConfig.DebugDataLog){
			dataLog(logger,tag,text,null);
		}
	}
	
	public static void dataLog(Logger logger,String tag,String text,Object[] objs){
		if(SysConfig.DebugDataLog){
			logger.info("--"+PACKAGE+"--数据调试日志--"+tag+"-------------------------------\n");
			logger.info(text, objs);
			logger.info("----------------------------------------------------------------\n");
		}
	}
	
}
