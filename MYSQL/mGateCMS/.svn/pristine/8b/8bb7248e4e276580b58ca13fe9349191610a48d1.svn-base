package com.llbt.cms.job;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.llbt.cms.config.SysConfig;

public class InterfaceCountJob {

	private static final Logger logger = LoggerFactory.getLogger(InterfaceCountJob.class);
	
	private long timeTamp=0;
	
	//@Autowired
	//private LogService logService;
	
	public InterfaceCountJob() {
//		logService=new LogService();
		//logService=(LogService) SpringContextUtil.getBean("logservice");
	}

	public void computeRequest(){
		logger.info("computeRequest......");
		
		if(timeTamp==0){
			timeTamp=new Date().getTime();
		}else{
			long t=new Date().getTime() -timeTamp;
			if(t>SysConfig.RequestCountInterval){
				//达到统计间隔时限
				//logger.info("computeRequest......  达到统计间隔时限");
				//SysConfig.RequestCountInterval=System.currentTimeMillis();
				SysConfig.RequestFlowState=0;
				timeTamp=new Date().getTime();
			}else{
				//未达到统计最大时限
				//int requestCount=logService.getRequestCount(timeTamp, System.currentTimeMillis());
				//logger.info("目前时限内接口请求量   "+requestCount);
				/*if(requestCount>SysConfig.RequestUpCount){
					logger.info("请求接口上线   "+requestCount);
					SysConfig.RequestFlowState=1;
				}*/
			}
		}
	}
	
}
