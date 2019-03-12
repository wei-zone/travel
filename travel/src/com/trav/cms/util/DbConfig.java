package com.trav.cms.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class DbConfig {
private static Properties pros = new Properties();
	
	static{
		try {
//			pros.load(new FileInputStream("src/com/hpe/dbutil/db.properties"));
			pros.load(DbConfig.class.getResourceAsStream("db.properties"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static final String DRIVER_CLASS = (String)pros.get("DRIVER_CLASS");
	public static final String DB_URL = (String)pros.get("DB_URL");
	public static final String DB_IP = (String)pros.get("DB_IP");
	public static final String DB_PORT = (String)pros.get("DB_PORT");
	public static final String DB_SID = (String)pros.get("DB_SID");
	public static final String USER = (String)pros.get("USER");
	public static final String PWD = (String)pros.get("PWD");
	public static final String CODE = (String)pros.get("CODE");
}
