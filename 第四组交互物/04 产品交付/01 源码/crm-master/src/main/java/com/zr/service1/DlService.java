package com.zr.service1;

import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.Dl;
import com.zr.model.Yg;
import com.zr.util.JDBCUtil;

public class DlService {
	Dl dl = null;
	public Dl dl(String zh,String mm){
		System.out.println("ssss"+zh+mm);
		try {
			String sql="SELECT * FROM USER WHERE ZH = "+"'"+zh+"'"+"and MM ="+"'"+mm+"'";
			//String sql="SELECT * FROM USER WHERE xm = "+"'"+xm+"'"+"and zt ="+"'"+zt+"'";
			
			Connection con;
			con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
			ResultSet result=(ResultSet) pst.executeQuery();
			
			while(result.next()) {
				
			  dl=new Dl(result.getString(3),result.getString(4));
				
			}
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dl;
		
		
		

	}
	
	
}
