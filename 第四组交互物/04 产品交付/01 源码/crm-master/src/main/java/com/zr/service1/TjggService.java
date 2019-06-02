package com.zr.service1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.mysql.jdbc.ResultSet;
import com.zr.model.Yg;
import com.zr.util.JDBCUtil;

public class TjggService {
	
	public boolean tian(String ggmc,String ggnr,String ggr,String cjsj){
		//System.out.println(yg.get(0));

		boolean  flag = false;
		int a=0;
		try {
			String sql1="SELECT gid FROM gg";
			Connection  con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst1 = (PreparedStatement) con.prepareStatement(sql1);
			ResultSet result=(ResultSet) pst1.executeQuery();
			while(result.next()) {
				a=result.getInt(1);
			};
			a=a+1;
			
			
			//System.out.println(yg.get(1));
			String sql = "INSERT INTO gg (gid,ggmc,ggnr,cjsj,ggr) VALUES (?,?,?,?,?)";
			//Connection  con = JDBCUtil.getConnection();
			PreparedStatement  pst = con.prepareStatement(sql);
			pst.setInt(1,a);
			pst.setString(2,ggmc);
			pst.setString(3,ggnr);
			pst.setString(4,cjsj);
			pst.setString(5,ggr);
			int i = pst.executeUpdate();
			if(i>=0){
				flag = true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return  flag;
		//return false;
	}
}
