/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import redis.clients.jedis.ShardedJedis;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.cache.TbTrreCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.common.ChannelResponse;
import com.llbt.cms.entity.TbTree;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.DepartmentService;
import com.llbt.cms.service.RoleService;
import com.llbt.cms.service.TbTreeService;
import com.llbt.cms.service.UserService;
import com.llbt.cms.util.PasswordEncryption;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * GateUserController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * @param <TbtrreCache>
 */
@Controller
@RequestMapping("/testTree")
@SuppressWarnings("unused")
public class TbTreeController<TbtrreCache> extends BaseController {
	@Autowired
	private TbTreeService tbTreeService;
	@Autowired
	private TbTrreCache tbtrreCache;
//	@Autowired
//	private RedisTemplate<String, String>  redisTemplate;
	
//	@RequestMapping("list")
//	public List<TbTree> userList() {
//		List<TbTree> list = tbTreeService.getAll();
//		for(TbTree tbTree : list){
//			System.out.println(tbTree.getCname());
//		}
//		return   list;
//	}
    
	
	//@RequestMapping("getKey")
	@RequestMapping(value="getKey", produces="text/html;charset=UTF-8") 
	public String set(){
		
//		redisTemplate.opsForValue().set("string", "string");
//		String getString = redisTemplate.opsForValue().get("string");
//		System.out.println("获取String="+getString);
		
		return  "";
	}
	@RequestMapping("getTreeAll")
	public List<TbTree> userList(String cid) {
//		TbTree list = tbTreeService.getTreeNode(cid);
//		List<TbTree> ListTbTrees  = tbTreeService.queryTreeNode(cid);
		//TbTree tbTree = TbtrreCache.generateTreeNode(cid);
		List<TbTree> tbTree = TbTrreCache.getMenusTree(cid);
//		for(TbTree tbTree : ListTbTrees){
//			TbTree tree = userList(tbTree.getCid());
//			list.getNodes().add(tree);
//		}
		Gson gson = new Gson();
//		String json = gson.toJson(list);
		System.out.println("tbTree="+gson.toJson(tbTree));
		return   tbTree ;
	}
	
	
	@RequestMapping(value="testString") 
	@ResponseBody 
	public String getString() {
		List<Map<String, User>> list = new ArrayList<>();
		User user = new User();
		user.setRealName("nihao");
		Map<String, User> map = new HashMap<String, User>();
		map.put("test", user);
		Gson gson = new Gson();
		//System.out.println("tbTree="+gson.toJson(map));
		list.add(map);
		//return  gson.toJson(map) ;
		String set = gson.toJson(list);
		return gson.toJson(list);
	}
}
	
