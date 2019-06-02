package com.zr.service1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.mysql.jdbc.ResultSet;
import com.zr.model.Yg;
import com.zr.util.JDBCUtil;

public class TjygService {
	
	
	public boolean tian(List<Yg> yg){
		//System.out.println(yg.get(0));
		Yg y1=yg.get(0);
		boolean  flag = false;
		int a=0;
		try {
			String sql1="SELECT yid FROM Yg";
			Connection  con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst1 = (PreparedStatement) con.prepareStatement(sql1);
			ResultSet result=(ResultSet) pst1.executeQuery();
			while(result.next()) {
				a=result.getInt(1);
				
			};
			a=a+1;
			System.out.println(a);
			
			
			//System.out.println(yg.get(1));
			String sql = "INSERT INTO Yg (yid,xm,sfzh,xb,zy,xl,yx,sj,dh,"
					+ "zzmm, qq,dz,yb,birth,mz,sxzy,ah,bz,bid) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			//Connection  con = JDBCUtil.getConnection();
			PreparedStatement  pst = con.prepareStatement(sql);
			pst.setInt(1,a);
			pst.setString(2,y1.getXm());
			pst.setString(3,y1.getSfzh());
			pst.setString(4,y1.getXb());
			pst.setString(5,y1.getZy());
			pst.setString(6,y1.getXl());
			pst.setString(7,y1.getYx());
			pst.setString(8,y1.getSj());
			pst.setString(9,y1.getDh());
			pst.setString(10,y1.getZzmm());
			pst.setString(11,y1.getQq());
			pst.setString(12,y1.getDz());	
			pst.setString(13,y1.getYb());
			pst.setString(14,y1.getBirth());
			pst.setString(15,y1.getMz());
			pst.setString(16,y1.getSxzy());
			pst.setString(17,y1.getAh());
			pst.setString(18,y1.getBz());
			System.out.print("部门3"+y1.getBid());
			pst.setInt(19,y1.getBid());
			
			
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
