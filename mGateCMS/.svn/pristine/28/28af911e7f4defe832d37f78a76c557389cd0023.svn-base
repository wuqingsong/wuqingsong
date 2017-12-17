package com.llbt.cms.listener;

import java.util.Timer;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

import com.llbt.cms.config.SysConfig;
import com.llbt.cms.job.InterfaceCountJob;

public class InstantiationTracingBeanPostProcessor implements ApplicationListener<ContextRefreshedEvent> {
	
	private static final Logger logger = LoggerFactory.getLogger(InterfaceCountJob.class);
	
	private static InterfaceCountJob interfaceCountJob;
	public static InterfaceCountJob getInterfaceCountJob(){
		if(interfaceCountJob==null){
			interfaceCountJob= new InterfaceCountJob();
		}
		return interfaceCountJob;
	}
	
	public void onApplicationEvent(ContextRefreshedEvent event) {
		// 需要执行的逻辑代码，当spring容器初始化完成后就会执行该方法。
		logger.info("onApplicationEvent....");
		//初始化定时器
		SysConfig.RequestCountTimer=new Timer();
		SysConfig.RequestCountTimer.schedule(new RequestCountTask(), 0,SysConfig.RequestTimerInterval);
		
	}
	
	class RequestCountTask extends TimerTask{

		@Override
		public void run() {
			getInterfaceCountJob().computeRequest();
		}
		
	}
	
}