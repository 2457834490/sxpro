package com.zr.service1;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mysql.jdbc.ResultSet;
import com.zr.util.JDBCUtil;

public class TjzwService {

	
	public boolean tian(String zwmc,String xxxx){
		//System.out.println(yg.get(0));
		boolean  flag = false;
		int a=0;
		try {
			String sql1="SELECT zid FROM zw";
			Connection  con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst1 = (PreparedStatement) con.prepareStatement(sql1);
			ResultSet result=(ResultSet) pst1.executeQuery();
			while(result.next()) {
				a=result.getInt(1);
				
			};
			a=a+1;
			String sql = "INSERT INTO zw (zid,zwmc,xxxx) VALUES (?,?,?)";
		    PreparedStatement  pst = con.prepareStatement(sql);
			pst.setInt(1,a);
			pst.setString(2,zwmc);
			pst.setString(3,xxxx);
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
