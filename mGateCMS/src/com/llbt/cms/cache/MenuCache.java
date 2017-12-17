package com.llbt.cms.cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.llbt.cms.dao.MenuMapper;
import com.llbt.cms.dao.RoleMapper;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.RoleMenu;
import com.llbt.cms.enumm.ReserveDist;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月20日
 * @description 菜单权限缓存类
 */
@Service
public class MenuCache extends BaseCache {

	@Autowired
	private RoleMapper roleMapper;

	@Autowired
	private MenuMapper menuMapper;

	/**
	 * 角色与菜单关系对象集合
	 */
	private List<RoleMenu> roleMenus = new ArrayList<RoleMenu>();

	private Map<String, Menu> menuMap = new HashMap<String, Menu>();
	/**
	 * 用户与角色关系对象集合
	 */
	private List<RoleMenu> userRoles = new ArrayList<RoleMenu>();

	private List<Menu> menuList = new ArrayList<Menu>();
	/**
	 * 菜单Url为KEY的Map
	 */
	private Map<String, Menu> menuUrlMap = new HashMap<String, Menu>();
	/**
	 * 角色下的菜单Map
	 */
	private Map<String, Map<String, String>> roleMenusUrlMap = new HashMap<String, Map<String, String>>();

	/**
	 * 刷新缓存类
	 * 
	 * @parem
	 */
	@PostConstruct
	public void doRefresh() {
		menuList = menuMapper.getMenuList();
		roleMenus = roleMapper.getRoleMenus();
		userRoles = roleMapper.getUserRoles();
		for (Menu menu : menuList) {
			menuMap.put(menu.getId(), menu);
			menuUrlMap.put(menu.getMenuUrl(), menu);
		}

		initRoleMenusUrlMap();
		logger.info("======> refresh MenuCache");
	}

	public void doRelationRefresh() {
		userRoles = roleMapper.getUserRoles();
		roleMenus = roleMapper.getRoleMenus();
		initRoleMenusUrlMap();
	}

	private void initRoleMenusUrlMap() {
		for (RoleMenu roleMenu : roleMenus) {
			String roleId = roleMenu.getRoleId();
			if (roleMenusUrlMap.containsKey(roleId)) {
				continue;
			}
			Map<String, String> roleMenuUrlMap = this.getRoleMenuUrlMap(roleId);
			roleMenusUrlMap.put(roleId, roleMenuUrlMap);
		}
	}

	public List<Menu> getUserMenus(String userId) {
		// 先获取用户的角色
		Map<String, String> userRoleMap = new HashMap<String, String>();

		for (RoleMenu roleMenu : userRoles) {
			String rUserId = roleMenu.getUserId();
			if (userId.equals(rUserId)) {
				userRoleMap.put(roleMenu.getRoleId(), roleMenu.getRoleId());
			}
		}

		return this.getRoleMenuTree(userRoleMap);
	}

	private List<Menu> getRoleMenus(Map<String, String> userRoleMap) {

		List<Menu> menus = new ArrayList<Menu>();
		// 先获取角色下的所有菜单ID
		for (RoleMenu gateRoleMenu : roleMenus) {
			System.out.println();
			String roleId = gateRoleMenu.getRoleId();
			String menuId = gateRoleMenu.getMenuId();
			if (userRoleMap.containsKey(roleId)) {
				Menu menu = menuMap.get(menuId);
				if (menu != null) {
					menus.add(menu);
				}
			}
		}
		return menus;
	}

	private Map<String, String> getRoleMenuUrlMap(String roleId) {
		Map<String, String> menuUrlMap = new HashMap<String, String>();
		if (StringUtils.isEmpty(roleId)) {
			return menuUrlMap;
		}
		// 先获取角色下的所有菜单ID
		for (RoleMenu gateRoleMenu : roleMenus) {
			String mroleId = gateRoleMenu.getRoleId();
			String menuId = gateRoleMenu.getMenuId();
			if (mroleId.equals(roleId)) {
				Menu menu = menuMap.get(menuId);
				menuUrlMap.put(menu.getMenuUrl(), "1");
			}
		}
		return menuUrlMap;
	}

	/*
	 * private List<Menu> getMenuTree(List<Menu> menus) { List<Menu> parentMenus
	 * = new ArrayList<Menu>(); for (Menu gateMenu : menus) { if
	 * (gateMenu.getParentId().equals("0")) { parentMenus.add(gateMenu); } } for
	 * (Menu parentMenu : parentMenus) { String parentId = parentMenu.getId();
	 * List<Menu> childMenus = new ArrayList<Menu>(); for (Menu childMenu :
	 * menus) { if (childMenu.getParentId().equals(parentId)) {
	 * childMenus.add(childMenu); } } parentMenu.setChildMenus(childMenus); }
	 * return parentMenus; }
	 */

	public List<Menu> getAllMenus() {
		return getMenusTree("0");
	}

	public List<Menu> getAllAuths() {
		return getAuthTree("0");
	}

	/**
	 * @parem
	 * @param parentId
	 * @return
	 */
	private List<Menu> getMenusTree(String parentId) {
		List<Menu> treeMenus = new ArrayList<Menu>();
		if (CollectionUtils.isNotEmpty(menuList)) {
			for (Menu menu : menuList) {
				if (menu.getParentId().equals(parentId)
						&& menu.getMenuType()
								.equals(ReserveDist.MENU_TYPE_MENU)) {
					menu.setChildMenus(getMenusTree(menu.getId()));
					treeMenus.add(menu);
				}
			}
		}
		return treeMenus;
	}

	private List<Menu> getAuthTree(String parentId) {
		List<Menu> treeMenus = new ArrayList<Menu>();
		if (CollectionUtils.isNotEmpty(menuList)) {
			for (Menu menu : menuList) {
				if (menu.getParentId().equals(parentId)) {
					menu.setChildMenus(getAuthTree(menu.getId()));
					treeMenus.add(menu);
				}
			}
		}
		return treeMenus;
	}

	public static List<Menu> getMenusTree(String parentId, List<Menu> menus) {
		List<Menu> treeMenus = new ArrayList<Menu>();
		if (CollectionUtils.isNotEmpty(menus)) {
			for (Menu menu : menus) {
				if (menu.getParentId().equals(parentId)
						&& menu.getMenuType()
								.equals(ReserveDist.MENU_TYPE_MENU)) {
					menu.setChildMenus(getMenusTree(menu.getId(), menus));
					treeMenus.add(menu);
				}
			}
		}
		return treeMenus;
	}

	public static List<Menu> getAuthTree(String parentId, List<Menu> menus) {
		List<Menu> treeMenus = new ArrayList<Menu>();
		if (CollectionUtils.isNotEmpty(menus)) {
			for (Menu menu : menus) {
				if (menu.getParentId().equals(parentId)) {
					menu.setChildMenus(getAuthTree(menu.getId(), menus));
					treeMenus.add(menu);
				}
			}
		}
		return treeMenus;
	}

	public List<Menu> getRoleMenuTree(Map<String, String> userRoleMap) {
		List<Menu> menus = this.getRoleMenus(userRoleMap);
		return getMenusTree("0", menus);
	}

	public List<Menu> getRoleAuthTree(Map<String, String> userRoleMap) {
		List<Menu> menus = this.getRoleMenus(userRoleMap);
		return getAuthTree("0", menus);
	}

	public String getUserMenuCodeString(String userId) {
		// 先获取用户的角色
		Map<String, String> userRoleMap = new HashMap<String, String>();

		for (RoleMenu roleMenu : userRoles) {
			String rUserId = roleMenu.getUserId();
			if (userId.equals(rUserId)) {
				userRoleMap.put(roleMenu.getRoleId(), roleMenu.getRoleId());
			}
		}
		List<Menu> userMenus = this.getRoleMenus(userRoleMap);
		if (CollectionUtils.isNotEmpty(userMenus)) {
			StringBuffer rightCodeString = new StringBuffer();
			for (Menu menu : userMenus) {
				rightCodeString.append("|" + menu.getMenuCode() + "|");
			}
			return rightCodeString.toString();
		}
		return "";
	}

	/**
	 * 
	 * @parem
	 * @param userId
	 * @param url
	 * @return
	 */
	public boolean validateUserAuth(String userId, String url) {
		List<String> roles = new ArrayList<String>();
		for (RoleMenu roleMenu : userRoles) {
			String rUserId = roleMenu.getUserId();
			if (userId.equals(rUserId)) {
				roles.add(roleMenu.getRoleId());
			}
		}

		if (CollectionUtils.isNotEmpty(roles)) {
			for (String roleId : roles) {
				if (roleMenusUrlMap.get(roleId).containsKey(url)) {
					return true;
				}
			}
		}
		return false;
	}

	public String getMenuNameByUrl(String url) {
		Menu menu = menuUrlMap.get(url);
		if (menu == null) {
			return "";
		}
		return menu.getMenuName();
	}

}
