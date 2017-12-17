package com.llbt.cms.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Enumeration;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.llbt.cms.enumm.ReserveDist;

/**
 * 
 * @author JianNian Lin
 * @date 2017-4-11
 * @description MMS System Utils Class
 */
public class MmsUtils {
	public static String setVeriCode(HttpServletResponse response)
			throws IOException {
		// 禁止图像缓存,使得单击验证码可以刷新验证码图片
		response.setContentType("image/jpeg");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		// HttpSession session = request.getSession();
		// 在内存中创建图象
		int width = 60, height = 40;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		// 获取图形上下文
		Graphics g = image.getGraphics();
		// 生成随机类
		Random random = new Random();
		// //设定背景色
		g.setColor(getRandColor(200, 250));
		g.fillRect(0, 0, width, height);
		// 字体
		g.setFont(new Font("Times New Roman", Font.PLAIN, 24));
		// 设置边框颜色
		g.setColor(getRandColor(160, 200));
		g.drawRect(0, 0, width - 1, height - 1);
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
		g.setColor(getRandColor(160, 200));
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}
		// 产生4位随机数
		String sRand = "";

		int length = ReserveDist.VERICODE_ARRAY.length;
		for (int i = 0; i < 4; i++) {
			// 转成string
			int index = random.nextInt(length);
			String rand = String.valueOf(ReserveDist.VERICODE_ARRAY[index]);
			sRand += rand;
			// 设置字体颜色
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110)));
			// 往图片里面画干扰线
			g.drawString(rand, 14 * i + 3, 27);
		}

		// // 将生成的验证码存入session中，以便进行校验
		// request.getSession().setAttribute("effectiveTime", new Date());
		// session.setAttribute("verifyCode", sRand);
		// 绘制图片
		g.dispose();
		// 将图片输出到response中
		ImageIO.write(image, "JPEG", response.getOutputStream());

		return sRand;
	}

	/**
	 * get random color
	 */
	private static Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

	/**
	 * get
	 */
	public static String getServerPath(HttpServletRequest request) {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path;
		return basePath;
	}

	public static String saveFile(MultipartFile imgs, String uploadPath,
			String folderPath) throws IllegalStateException, IOException {
		String fileName = null;
		folderPath = folderPath == null ? "/"
				+ DateFormatUtil.toDateString(new Date()) + "/" : folderPath;
		if (imgs != null && imgs.getSize() > 0) {
			String oriFileName = imgs.getOriginalFilename();
			String fileNameExtension = oriFileName.substring(
					oriFileName.lastIndexOf("."), oriFileName.length());
			fileName = PrimaryKeyUtils.getUUID() + fileNameExtension;
			File file = new File(uploadPath + folderPath + fileName);
			if (!file.exists()) {
				file.mkdirs();
			}

			imgs.transferTo(file);
		}

		return "/upload" + folderPath + fileName;
	}

	public static boolean isImage(String fileName) {
		String fileNameExtension = fileName.substring(
				fileName.lastIndexOf("."), fileName.length());
		fileNameExtension = fileNameExtension.toLowerCase();

		return fileNameExtension.indexOf("png") > 0
				|| fileNameExtension.indexOf("jpg") > 0
				|| fileNameExtension.indexOf("jpeg") > 0;
	}

	public static String getIpAddress(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}


	public static String getParamsDescFromRequest(HttpServletRequest request,
			String prefixMethodName) {
		StringBuffer sb = new StringBuffer();
		sb.append(prefixMethodName + " params:[");
		Enumeration<String> parameterNames = request.getParameterNames();
		while (parameterNames.hasMoreElements()) {
			String paramName = parameterNames.nextElement();
			sb.append(paramName + ":");
			String[] parameterValues = request.getParameterValues(paramName);
			if (parameterValues != null && parameterValues.length > 0) {
				for (int i = 0; i < parameterValues.length; i++) {
					String value = parameterValues[i];
					if (i == 0) {
						sb.append(value);
					} else {
						sb.append("," + value);
					}
				}
				sb.append(";");
			}

		}
		sb.append("]");
		return sb.toString();
	}

}
