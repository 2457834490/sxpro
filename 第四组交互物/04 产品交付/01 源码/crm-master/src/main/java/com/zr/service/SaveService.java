package com.zr.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.zr.util.JDBCUtil;

public class SaveService {
	/**
	 * 保存用户信息
	 * @param uname  
	 * @return
	 */
	public boolean saveUserByUserName(String uname){
		boolean  flag = false;
		try {
			String sql = "INSERT INTO user (uname) VALUES (?)";
			Connection  con = JDBCUtil.getConnection();
			PreparedStatement  pst = con.prepareStatement(sql);
			pst.setString(1, uname);
			int i = pst.executeUpdate();
			if(i>=0){
				flag = true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return  flag;
	}
}
