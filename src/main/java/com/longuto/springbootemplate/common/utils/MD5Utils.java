package com.longuto.springbootemplate.common.utils;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class MD5Utils {

	protected MD5Utils(){

	}

	private static final String ALGORITH_NAME = "md5";

	private static final int HASH_ITERATIONS = 2;

	public static String encrypt(String username, String pswd) {
		return encrypt(username, pswd, null);
	}

	public static String encrypt(String username, String pswd, String salt) {
		return new SimpleHash(ALGORITH_NAME, pswd, ByteSource.Util.bytes(username.toLowerCase() + (!StringUtils.isNotBlank(salt) ? "" : salt.toString())),
				HASH_ITERATIONS).toHex();
	}
}
