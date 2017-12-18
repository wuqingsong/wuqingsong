package com.llbt.cms.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.bouncycastle.jce.provider.BouncyCastleProvider;

import sun.misc.BASE64Decoder;

import com.llbt.cms.common.AppConfig;

public class RSAEncrypt {
	
	//http://blog.csdn.net/chaijunkun/article/details/7275632/
	
	private static final String DEFAULT_PUBLIC_KEY= 
		"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFL3xak3PWRLKk2OHyPhZ9zDVj" + "\r" +
		"OamAHki203jd7AD64HzkiX++wOviXdH9rziYUJ1YdSXzI5J4UEhD7ldPcJNgoGL0" + "\r" +
		"XZEEt8jkmiTsxErc6ZDoHGsP9jw57aLbpMgfazYWdroGCikEzvyRoVlGXzfXHOvy" + "\r" +
		"Diz8WtL3yUhZoXaN9QIDAQAB" + "\r";
	
	private static final String DEFAULT_PRIVATE_KEY=AppConfig.getValue("host.key");
			
			
		/*"MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMUvfFqTc9ZEsqTY" + "\r" +
		"4fI+Fn3MNWM5qYAeSLbTeN3sAPrgfOSJf77A6+Jd0f2vOJhQnVh1JfMjknhQSEPu" + "\r" +
		"V09wk2CgYvRdkQS3yOSaJOzEStzpkOgcaw/2PDntotukyB9rNhZ2ugYKKQTO/JGh" + "\r" +
		"WUZfN9cc6/IOLPxa0vfJSFmhdo31AgMBAAECgYBkaiArh/dvYCCRLhkx4UhW2408" + "\r" +
		"cHrO0Z057UsZyDtfhr5TK2owW9JDvn9XbsmlVzgpec7PmIfYWRnT7iXsQGnr3uGq" + "\r" +
		"IUNWuHjBAWAY+0o3ZxA9cOmE7owfJdGs+VBQCZ4k+QpAJc+WOF7oVB+P8/y6QK6K" + "\r" +
		"t/TEKAV0FLbhECjHwQJBAPnafyjgUAGE+E63eRzWERGOhgGKl2/TXB7rp/SAHY6g" + "\r" +
		"m7leWXBIoPVVYaDSRFAYTme6t0yPxnutclBYK+7RdjkCQQDKCU0wSpgtu1/QQl7m" + "\r" +
		"7eUhuhdaeXSNFyFi5AnUehIjqJ7vn0JBPJNY3qQQ+VyDxeiMn7TqRb+47zZjBgLH" + "\r" +
		"wXWdAkA5uERQCSHyd+l1JeWQx9NBnw9OI9pANy+85Ov0C/TIEkpnVGiNC/pDMupO" + "\r" +
		"4MRvTG4wgG3//eb4g2U5MmVT0ofhAkA5ZsMjgU4TUDU8ul60Rcrf9jtEXVWb8IJv" + "\r" +
		"0lJop/YXY4Ukl57/YfKLQVZj7DU4yzXzHj0MgpyiMnTFVaPclT6RAkAaRnmIctG7" + "\r" +
		"tD2gf7cvXdGf4QUwUtg+Vol3d0uIa4zSEE/3IgsthfaweZGsGz7BM383wiQfbmYB" + "\r" +
		"Zew+1LrICVvt" + "\r";
*/
	/**
	 * 私钥
	 */
	private RSAPrivateKey privateKey;

	/**
	 * 公钥
	 */
	private RSAPublicKey publicKey;
	
	/**
	 * 字节数据转字符串专用集合
	 */
	private static final char[] HEX_CHAR= {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
	

	/**
	 * 获取私钥
	 * @return 当前的私钥对象
	 */
	public RSAPrivateKey getPrivateKey() {
		return privateKey;
	}

	/**
	 * 获取公钥
	 * @return 当前的公钥对象
	 */
	public RSAPublicKey getPublicKey() {
		return publicKey;
	}

	/**
	 * 随机生成密钥对
	 */
	public void genKeyPair(){
		KeyPairGenerator keyPairGen= null;
		try {
			keyPairGen= KeyPairGenerator.getInstance("RSA");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if(keyPairGen!=null){
			keyPairGen.initialize(1024, new SecureRandom());
			KeyPair keyPair= keyPairGen.generateKeyPair();
			this.privateKey= (RSAPrivateKey) keyPair.getPrivate();
			this.publicKey= (RSAPublicKey) keyPair.getPublic();
		}
	}

	/**
	 * 从文件中输入流中加载公钥
	 * @param in 公钥输入流
	 * @throws Exception 加载公钥时产生的异常
	 */
	public void loadPublicKey(InputStream in) throws Exception{
		try {
			BufferedReader br= new BufferedReader(new InputStreamReader(in));
			String readLine= null;
			StringBuilder sb= new StringBuilder();
			while((readLine= br.readLine())!=null){
				if(readLine.charAt(0)=='-'){
					continue;
				}else{
					sb.append(readLine);
					sb.append('\r');
				}
			}
			loadPublicKey(sb.toString());
		} catch (IOException e) {
			throw new Exception("公钥数据流读取错误");
		} catch (NullPointerException e) {
			throw new Exception("公钥输入流为空");
		}
	}


	/**
	 * 从字符串中加载公钥
	 * @param publicKeyStr 公钥数据字符串
	 * @throws Exception 加载公钥时产生的异常
	 */
	public void loadPublicKey(String publicKeyStr) throws Exception{
		try {
			BASE64Decoder base64Decoder= new BASE64Decoder();
			byte[] buffer= base64Decoder.decodeBuffer(publicKeyStr);
			KeyFactory keyFactory= KeyFactory.getInstance("RSA");
			X509EncodedKeySpec keySpec= new X509EncodedKeySpec(buffer);
			this.publicKey= (RSAPublicKey) keyFactory.generatePublic(keySpec);
		} catch (NoSuchAlgorithmException e) {
			throw new Exception("无此算法");
		} catch (InvalidKeySpecException e) {
			throw new Exception("公钥非法");
		} catch (IOException e) {
			throw new Exception("公钥数据内容读取错误");
		} catch (NullPointerException e) {
			throw new Exception("公钥数据为空");
		}
	}

	/**
	 * 从文件中加载私钥
	 * @param keyFileName 私钥文件名
	 * @return 是否成功
	 * @throws Exception 
	 */
	public void loadPrivateKey(InputStream in) throws Exception{
		try {
			BufferedReader br= new BufferedReader(new InputStreamReader(in));
			String readLine= null;
			StringBuilder sb= new StringBuilder();
			while((readLine= br.readLine())!=null){
				if(readLine.charAt(0)=='-'){
					continue;
				}else{
					sb.append(readLine);
					sb.append('\r');
				}
			}
			loadPrivateKey(sb.toString());
		} catch (IOException e) {
			throw new Exception("私钥数据读取错误");
		} catch (NullPointerException e) {
			throw new Exception("私钥输入流为空");
		}
	}

	public void loadPrivateKey(String privateKeyStr) throws Exception{
		try {
			BASE64Decoder base64Decoder= new BASE64Decoder();
			byte[] buffer= base64Decoder.decodeBuffer(privateKeyStr);
			PKCS8EncodedKeySpec keySpec= new PKCS8EncodedKeySpec(buffer);
			KeyFactory keyFactory= KeyFactory.getInstance("RSA");
			this.privateKey= (RSAPrivateKey) keyFactory.generatePrivate(keySpec);
		} catch (NoSuchAlgorithmException e) {
			throw new Exception("无此算法");
		} catch (InvalidKeySpecException e) {
			throw new Exception("私钥非法");
		} catch (IOException e) {
			throw new Exception("私钥数据内容读取错误");
		} catch (NullPointerException e) {
			throw new Exception("私钥数据为空");
		}
	}

	/**
	 * 加密过程
	 * @param publicKey 公钥
	 * @param plainTextData 明文数据
	 * @return
	 * @throws Exception 加密过程中的异常信息
	 */
	public byte[] encrypt(RSAPublicKey publicKey, byte[] plainTextData) throws Exception{
		if(publicKey== null){
			throw new Exception("加密公钥为空, 请设置");
		}
		Cipher cipher= null;
		try {
			cipher= Cipher.getInstance("RSA", new BouncyCastleProvider());
			cipher.init(Cipher.ENCRYPT_MODE, publicKey);
			byte[] output= cipher.doFinal(plainTextData);
			return output;
		} catch (NoSuchAlgorithmException e) {
			throw new Exception("无此加密算法");
		} catch (NoSuchPaddingException e) {
			e.printStackTrace();
			return null;
		}catch (InvalidKeyException e) {
			throw new Exception("加密公钥非法,请检查");
		} catch (IllegalBlockSizeException e) {
			throw new Exception("明文长度非法");
		} catch (BadPaddingException e) {
			throw new Exception("明文数据已损坏");
		}
	}

	/**
	 * 解密过程
	 * @param privateKey 私钥
	 * @param cipherData 密文数据
	 * @return 明文
	 * @throws Exception 解密过程中的异常信息
	 */
	public byte[] decrypt(RSAPrivateKey privateKey, byte[] cipherData) throws Exception{
		if (privateKey== null){
			throw new Exception("解密私钥为空, 请设置");
		}
		Cipher cipher= null;
		try {

		    Security.addProvider(new org.bouncycastle.jce.provider.BouncyCastleProvider());  
			cipher= Cipher.getInstance("RSA/None/PKCS1Padding", "BC");//Cipher.getInstance("RSA", new BouncyCastleProvider());
			
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			byte[] output= cipher.doFinal(cipherData);
			return output;
		} catch (NoSuchAlgorithmException e) {
			throw new Exception("无此解密算法");
		} catch (NoSuchPaddingException e) {
			e.printStackTrace();
			return null;
		}catch (InvalidKeyException e) {
			throw new Exception("解密私钥非法,请检查");
		} catch (IllegalBlockSizeException e) {
			throw new Exception("密文长度非法");
		} catch (BadPaddingException e) {
			throw new Exception("密文数据已损坏");
		}		
	}

	
	/**
	 * 字节数据转十六进制字符串
	 * @param data 输入数据
	 * @return 十六进制内容
	 */
	public static String byteArrayToString(byte[] data){
		StringBuilder stringBuilder= new StringBuilder();
		for (int i=0; i<data.length; i++){
			//取出字节的高四位 作为索引得到相应的十六进制标识符 注意无符号右移
			stringBuilder.append(HEX_CHAR[(data[i] & 0xf0)>>> 4]);
			//取出字节的低四位 作为索引得到相应的十六进制标识符
			stringBuilder.append(HEX_CHAR[(data[i] & 0x0f)]);
			if (i<data.length-1){
				stringBuilder.append(' ');
			}
		}
		return stringBuilder.toString();
	}
	
	/**
	 * 解密
	 * @param cipher
	 * @return
	 */
	public static String decryption(byte[] cipher){
		String str = "";
		RSAEncrypt rsaEncrypt= new RSAEncrypt();
		//加载私钥
		try {
			rsaEncrypt.loadPrivateKey(RSAEncrypt.DEFAULT_PRIVATE_KEY);
			System.out.println("加载私钥成功");
		} catch (Exception e) {
			System.err.println(e.getMessage());
			System.err.println("加载私钥失败");
		}
		try {
			//解密
			byte[] plainText = rsaEncrypt.decrypt(rsaEncrypt.getPrivateKey(), cipher);
			System.out.println("密文长度:"+ cipher.length);
			System.out.println(RSAEncrypt.byteArrayToString(cipher));
			System.out.println("明文长度:"+ plainText.length);
			System.out.println(RSAEncrypt.byteArrayToString(plainText));
			str = new String(plainText);
			System.out.println(str);
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return str;
	}
	
	/**
	 * 加密
	 * @param encryptStr
	 * @return
	 */
	public static byte[] encryption(String encryptStr){
		byte[] cipher = null;
		RSAEncrypt rsaEncrypt= new RSAEncrypt();
		//加载公钥
		try {
			rsaEncrypt.loadPublicKey(RSAEncrypt.DEFAULT_PUBLIC_KEY);
			System.out.println("加载公钥成功");
		} catch (Exception e) {
			System.err.println(e.getMessage());
			System.err.println("加载公钥失败");
		}
		try {
			//加密
			cipher = rsaEncrypt.encrypt(rsaEncrypt.getPublicKey(), encryptStr.getBytes());
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		return cipher;
	}
	
	public static byte[] base642byte(String base64){
		//新建一个BASE64Decoder 
		BASE64Decoder decode = new BASE64Decoder(); 
		//将base64转换为byte[]
		byte[] b = null;
		try {
			b = decode.decodeBuffer(base64);
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return b;
	}


	public static void main(String[] args){
//		String str = "hello world 你好！";
//		byte[] k = encryption(str);
		String base64 = "ZvLP3CHDvXb5GzQlpwnesKF4DUmqftNO14uFZiBqTugl6QzGoD6NvsnDrmXpCLR6+810moRtFXvoN3ZhbWhjIJ+AGoHakBXR/IEbvrrbEa6zDq5APTB9pZeVmr4tZhV8qWl/as/JhRpSt8iTHAoEipI3ov99/5tR7HvnRKLKQR8=";
		String str2 = decryption(base64);
		System.out.println("str2 = "+str2);
	}
	
	/**
	 * 解密RSA加密后密码
	 */
	public static String decryption(String base64){
		byte[] base64key = base642byte(base64);
		return decryption(base64key);
	}
}
