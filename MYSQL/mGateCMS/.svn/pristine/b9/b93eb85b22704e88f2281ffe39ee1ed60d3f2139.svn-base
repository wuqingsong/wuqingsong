package com.llbt.cms.util;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class AESUtil {
	static final public String KEY_VI = "1234567891123456";
	public static final String bm = "UTF-8";  
	public static String encrypt(String dataPassword, String cleartext)
			throws Exception {
		IvParameterSpec zeroIv = new IvParameterSpec(KEY_VI.getBytes(),0,16);
		SecretKeySpec key = new SecretKeySpec(dataPassword.getBytes(),"AES");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.ENCRYPT_MODE, key, zeroIv);
		byte[] encryptedData = cipher.doFinal(cleartext.getBytes(bm));
		return new String (parseByte2HexStr(encryptedData));
	}

	/*
	private static byte[] encrypt(byte[] data,byte[] key,int mode) throws Exception{
		SecretKeySpec skeySpec = new SecretKeySpec(key, "AES/CBC/PKCS5Padding");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(mode, skeySpec);
		byte[] encrypted = cipher.doFinal(data);
		return encrypted;
	}*/
	
	
	public static String decrypt(String dataPassword, String encrypted)
			throws Exception {
		byte[] byteMi = parseHexStr2Byte(encrypted);
		//byte[] byteMi = Base64Android.decode(encrypted);
		IvParameterSpec zeroIv = new IvParameterSpec(KEY_VI.getBytes(),0,16);
		SecretKeySpec key = new SecretKeySpec(dataPassword.getBytes(),"AES");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, key, zeroIv);
		byte[] decryptedData = cipher.doFinal(byteMi);

		return new String(decryptedData,bm);
	}
	/**
	 * 将16进制转换为二进制
	 * 
	 * @param hexStr
	 * @return
	 */
	public static byte[] parseHexStr2Byte(String hexStr) {
		if (hexStr.length() < 1) {
			return null;
		}
		byte[] result = new byte[hexStr.length() / 2];
		for (int i = 0; i < hexStr.length() / 2; i++) {
			int high = Integer.parseInt(hexStr.substring(i * 2, i * 2 + 1), 16);
			int low = Integer.parseInt(hexStr.substring(i * 2 + 1, i * 2 + 2), 16);
			result[i] = (byte) (high * 16 + low);
		}
		return result;
	}

	/**
	 * 将二进制转换成16进制
	 * 
	 * @param buf
	 * @return
	 */
	public static String parseByte2HexStr(byte buf[]) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < buf.length; i++) {
			String hex = Integer.toHexString(buf[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sb.append(hex.toUpperCase());
		}
		return sb.toString();
	}
	
	public static void main(String[] args) throws Exception {
		
		//byte[] result = AESUtil.encrypt("123456".getBytes(), "BCwrKTrGYqPUEZ8o".getBytes(),1);
		String je = AESUtil.encrypt("BCwrKTrGYqPUEZ8o","123456");
		//String je = "A87C29B92AD5B537B20BDFF8B60F62BA";
		System.out.println(je);
		//70GJCd1rGwpqm+VUG0wEVg==
		//byte[] jt = Base64Android.decode("70GJCd1rGwpqm+VUG0wEVg==");
		//System.out.println(jt);
		//String ct = AESUtil.decrypt("BCwrKTrGYqPUEZ8o",je);
		//System.out.println(ct);
	}
}
