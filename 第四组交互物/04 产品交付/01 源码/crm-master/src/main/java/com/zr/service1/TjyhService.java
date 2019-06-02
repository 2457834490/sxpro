package com.zr.service1;

import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.User;
import com.zr.model.Yg;
import com.zr.util.JDBCUtil;

public class TjyhService {
	
	public boolean addyh(List<User> yh){
		//System.out.println(yg.get(0));
		boolean  flag = false;
		int a=0;
		try {
			String sql1="SELECT id FROM USER";
			Connection  con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst1 = (PreparedStatement) con.prepareStatement(sql1);
			ResultSet result=(ResultSet) pst1.executeQuery();
			while(result.next()) {
				a=result.getInt(1);
				
			};
			System.out.println(a);
			//result.getInt(1);
			User user=yh.get(0);
			int id=a+1;
			String xm=user.getXm();
			System.out.println(xm);
			String  zh=user.getZh();
			String mm=user.getMm();
			int zt=user.getZt();
			String Rq=user.getRq();
			
			String sql = "INSERT INTO USER (id,xm,zh,mm,zt,rq) VALUES (?,?,?,?,?,?)";
			
			PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setInt(1, id);
			pst.setString(2, xm);
			pst.setString(3, zh);
			pst.setString(4, mm);
			pst.setInt(5, zt);
			pst.setString(6,Rq);
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
