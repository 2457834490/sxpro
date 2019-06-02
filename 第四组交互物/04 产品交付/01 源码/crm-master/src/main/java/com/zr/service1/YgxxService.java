package com.zr.service1;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.Yg;
import com.zr.util.JDBCUtil;

public class YgxxService {
	List<Yg> yg1;
	       
	   public List<Yg> ygxx(String xm,String sfzh,String xb,String sj,int ssbm){
		   try {
			 /*  System.out.println("xm"+xm);
			   System.out.println("身份证号"+sfzh);
			   System.out.println("性别"+xb);
			   System.out.println("手机"+sj);
			   System.out.println("所属部门"+ssbm);*/
			  if(!xm.equals("")) {
			  yg1=new ArrayList<Yg>();
			  String sql="SELECT * ,b.bm FROM yg y,bm b WHERE b.bid=y.bid and xm =" + "'" + xm + "'" + " and sfzh = " + "'" + sfzh + "'" + " and xb = "
			  		+ "'" + xb + "'" + " and sj = " + "'" + sj +
			  		"'" +" and y.bid = "+ "'" +ssbm+"'";
					   Connection con;
		   con = (Connection) JDBCUtil.getConnection();
			PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
			ResultSet result=(ResultSet) pst.executeQuery();
          	while(result.next()) {
				Yg yg=new Yg(
						result.getInt(1),
						result.getString(2),
						result.getString(3),
						result.getString(4),
						result.getString(5),
						result.getString(6),
						result.getString(7),
						result.getString(8),
						result.getString(9),
						result.getString(10),
						result.getString(11),
						result.getString(12),
						result.getString(13),
						result.getString(14),
						result.getString(15),
						result.getString(16),
						result.getString(17),
						result.getString(18),
						result.getInt(19),
						result.getString("bm")
						);
				yg1.add(yg);
			//	System.out.println(result.getInt(1));
			//	System.out.println(result.getString("bm"));
				//System.out.println(result.getString("xm"));
			}
			  }else {
				  yg1=new ArrayList<Yg>();
				  String sql="SELECT * ,b.bm FROM yg y,bm b  WHERE b.bid=y.bid";
						   Connection con;
			   con = (Connection) JDBCUtil.getConnection();
				PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
				ResultSet result=(ResultSet) pst.executeQuery();
	          	while(result.next()) {
					Yg yg=new Yg(
							result.getInt(1),
							result.getString(2),
							result.getString(3),
							result.getString(4),
							result.getString(5),
							result.getString(6),
							result.getString(7),
							result.getString(8),
							result.getString(9),
							result.getString(10),
							result.getString(11),
							result.getString(12),
							result.getString(13),
							result.getString(14),
							result.getString(15),
							result.getString(16),
							result.getString(17),
							result.getString(18),
							result.getInt(19),
							result.getString("bm")
							);
					yg1.add(yg);
				//	System.out.println(result.getInt(1));
					//System.out.println(result.getString("bm"));
				//	System.out.println(result.getString("xm"));
				  
				  
				  
	          	} 
			  }
		   }catch(Exception e) {
			   e.printStackTrace();
		   }
		     return yg1;
	   }
	
	
}
