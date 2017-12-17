package com.llbt.cms.util;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

import com.google.gson.Gson;
import com.llbt.cms.common.ChannelResponse;
import com.wheat.kit.HttpKit;

public class HttpUtil {

	public static ChannelResponse get(String url, Map<String, String> queryParas) {
		String json = HttpKit.get(url, queryParas);
		Gson gson = new Gson();
		ChannelResponse res = gson.fromJson(json, ChannelResponse.class);
		return res;
	}

	public static HttpServletRequest getRequest() {
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		return req;
	}

	public static HttpServletResponse getResponse() {
		HttpServletResponse resp = ((ServletWebRequest) RequestContextHolder
				.getRequestAttributes()).getResponse();
		return resp;
	}

	public static String httpGET(String url) {
		String message = null;
		try {
			URL urlGet = new URL(url);
			HttpURLConnection http = (HttpURLConnection) urlGet
					.openConnection();

			http.setRequestMethod("GET"); // 必须是get方式请求
			http.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			http.setDoOutput(true);
			http.setDoInput(true);
			http.setConnectTimeout(30000);
			http.setReadTimeout(30000);
			http.connect();

			InputStream is = http.getInputStream();
			int size = is.available();
			byte[] jsonBytes = new byte[size];
			is.read(jsonBytes);
			message = new String(jsonBytes, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}

	/*****
	 * http请求获取数据
	 * 
	 * @param url
	 * @return
	 */
	public static String httpPOST(String url) {
		String message = null;
		try {
			URL urlGet = new URL(url);
			HttpURLConnection http = (HttpURLConnection) urlGet
					.openConnection();
			http.setRequestMethod("POST"); // 必须是POST方式请求
			http.setRequestProperty("Content-Type",
					"application/x-www-form-urlencoded");
			http.setDoOutput(true);
			http.setDoInput(true);
			http.setConnectTimeout(30000);
			http.setReadTimeout(30000);
			http.connect();

			InputStream is = http.getInputStream();
			int size = is.available();
			byte[] jsonBytes = new byte[size];
			is.read(jsonBytes);
			message = new String(jsonBytes, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}

	/**
	 * 缓存推送
	 * 
	 * @parem
	 * @param cacheName
	 */
	public static void cacheNotify(String cacheName) {
		new Thread() {
			public void run() {
				String result = "";

				while (result.equals("OK")) {
					try {
						String httpGET = httpGET("");
						JSONObject jsonObject = new JSONObject(httpGET);
						result = (String) jsonObject.get("code");
					} catch (Exception e) {
					}
				}
			}
		}.start();
	}

}