package com.llbt.cms.aop;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.google.gson.JsonObject;
import com.llbt.cms.entity.Gate;
import com.llbt.cms.service.GateServiceImpl;
import com.llbt.cms.util.AESEncrypt;
import com.llbt.cms.util.HttpUtil;
import com.llbt.cms.util.RSAEncrypt;

public class InterfaceFilter {
	
	
	/*@Autowired
	public GateServiceImpl gateService;*/
	private Logger logger = LoggerFactory.getLogger(InterfaceFilter.class); 
	/** 
     * 校验入参 
     * @param point 
     * @throws Throwable  
     */  
    public Object validate(ProceedingJoinPoint point) throws Throwable{  
       /* logger.info("过滤拦截!");  
        Object[] objs = point.getArgs(); 
        String debug = HttpUtil.getRequest().getHeader("debug");		//true调试、false运行
        if(debug==null || debug.equals("")){
        	 //声明JSONArray对象并输入JSON字符串
	       	 JsonObject json = new JsonObject();
	       	 json.addProperty("code", "10000");
	       	 HttpUtil.getResponse().getWriter().print(json.toString());
	       	 return null;  
        }else if(debug.equals("fasle")){
        	 String sign = HttpUtil.getRequest().getHeader("sign");			//签名
             String imeifactor = HttpUtil.getRequest().getHeader("imeifactor");	//手机mak地址
             String payloadKey = HttpUtil.getRequest().getHeader("payloadKey");
             String timestamp = HttpUtil.getRequest().getHeader("timestamp");	//请求时间戳
             String appChannel = HttpUtil.getRequest().getHeader("appChannel");	//渠道号10000暂定
             String deviceModel = HttpUtil.getRequest().getHeader("deviceModel");	//机型
             String deviceVersion = HttpUtil.getRequest().getHeader("deviceVersion");	//机型版本号
             String appVersion = HttpUtil.getRequest().getHeader("appVersion");
             String dataEntity = HttpUtil.getRequest().getParameter("dataEntity");	//数据体
             String transportKey = objs[2].toString();
             transportKey = transportKey.replaceAll(" ","+"); 
             String rsaTransportKey = RSAEncrypt.decryption(transportKey);
             String en = AESEncrypt.decryptData(payloadKey, rsaTransportKey);
             System.out.println(en);
             List<Gate> gateAll = gateService.getAll();
     		 System.out.println("查询全部数量："+gateAll.size());
     		 String requstPath = HttpUtil.getRequest().getRequestURI();//请求的URL
     		 System.out.println(requstPath);
             MethodSignature signature = (MethodSignature) point.getSignature();  
             Method method = signature.getMethod();  
             //检测  
             Annotation[][] annos = method.getParameterAnnotations();  
             boolean flag = validateParameterAnnotation(annos);  
             //虽然方法加了注解,但是参数么有注解,pass  
             if(!flag){  
             	 //声明JSONArray对象并输入JSON字符串
             	 JsonObject json = new JsonObject();
             	 json.addProperty("return", "111");
             	 HttpUtil.getResponse().getWriter().print(json.toString());
             	 return null;  
             }  
        }else if(debug.equals("true")){
            return point.proceed(objs);  
        }*/
        //得到标注@Validate注解的参数  
       /* List<Param> params = AnnotationHelper.getParms(method,objs);  
        if(params!=null){  
            for(Param param : params){  
                String validRes = validateDetail(param);  
                if(validRes!=null && !validRes.equals("")){  
                    logger.info("客户端上报参数错误详细信息:{}",validRes);  
                    //return ResponseUtil.message(ErrorCode.CLIENT_ERROR.getCode(), "客户端上报参数错误");  
                }  
            }  
        }  */
        //没有错误就沿着毛主席的路线继续前进!  
        return new Object();  
    }  

	/** 
     * 具体的校验逻辑,返回警告信息 
     * @param obj 
     * @return 
     * @throws IllegalAccessException  
     * @throws IllegalArgumentException  
     */  
    private String validateDetail(Param param) throws IllegalArgumentException, IllegalAccessException{  
        Validate val = (Validate)param.getAnno();  
        boolean isVali = val.isValidate();  
        StringBuilder sb = new StringBuilder();  
        if(isVali){  
            if(val.isForm() == true){  
                String res = validateForm(param);  
                append(sb,res);  
            }else{  
                String res = validateCommon(param);  
                append(sb,res);  
            }  
        }  
        return sb.toString();  
    }  
      
    private void append(StringBuilder sb,String res){  
        if(res!=null){  
            sb.append("_");  
            sb.append(res);  
        }  
    }  
      
    /** 
     * 验证是否有某个注解 
     * @param annos 
     * @param validate 
     * @return 
     */  
    private boolean validateParameterAnnotation(Annotation[][] annos){  
        boolean flag = false;  
        for(Annotation[] at : annos){  
            for(Annotation a : at){  
                if(a.annotationType() == Validate.class){  
                    flag = true;  
                }  
            }  
        }  
        return flag;  
    }  
      
    private String  validateCommon(Param param){  
        String res = null;  
        if(param.getValue()==null){  
            res = param.getName()+"的参数值为空!";  
        }  
        return res;  
    }  
      
    private String validateForm(Param param) throws IllegalArgumentException, IllegalAccessException{  
        Class<?> clazz = param.getValue().getClass();  
        Field[] fields = clazz.getDeclaredFields();  
        StringBuilder sb = new StringBuilder();  
        for(Field f : fields){  
            Annotation[] annos = f.getAnnotations();  
            if(annos!=null){  
                String paramName = param.getName()+"."+f.getName();  
                Must must = (Must)annos[0];  
                if(must.isMust()){  
                    f.setAccessible(true);  
                    Object obj = f.get(param.getValue());  
                    Class<?> type = f.getType();  
                    if(type.isArray()){  
                        Object[] arr = (Object[])obj;  
                        if(arr==null){  
                            append(sb, paramName+"不能为空!");  
                        }  
                    }else if(type.isPrimitive()){  
                        if(type == int.class){  
                            int intObj = (int)obj;  
                            if(intObj <= 0){  
                                append(sb, paramName+"不能小于等于0!");  
                            }  
                        }else if(type == long.class){  
                            long longObj = (long)obj;  
                            if(longObj <= 0){  
                                append(sb, paramName+"不能小于等于0!");  
                            }  
                        }  
                    }else if(type == String.class){  
                        if(obj==null){  
                            append(sb, paramName+"不能为空!");  
                        }  
                    }  
                }  
            }  
        }  
        return sb.toString();  
    }  
}
