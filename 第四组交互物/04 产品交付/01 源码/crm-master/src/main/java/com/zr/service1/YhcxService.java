package com.zr.service1;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.User;
import com.zr.util.JDBCUtil;

public class YhcxService {
	   
	List<User> a=new ArrayList<User>();
	User user;
	   public List<User> yhcx(String xm,int zt){
		   System.out.println(xm+zt);
		    
		   try {
			   if(zt==1) {
				   
				   String sql="SELECT * FROM USER WHERE xm = "+"'"+xm+"'"+"and  zt ="+"'"+zt+"'";
				   Connection  con = (Connection) JDBCUtil.getConnection();
				   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
				   // pst.setString(1,xm);
				  //  pst.setInt(2, zt);
				   ResultSet result=(ResultSet) pst.executeQuery(sql);
				     while(result.next()) {
				    	 
				    	user=new User(result.getInt(1),result.getString(2),
				    			result.getString(3),result.getString(4),
				    			result.getInt(5),result.getString(6));
				    	a.add(user);
				    	System.out.println(result.getString(2));
				    	System.out.println(result.getString(5)); 
				   
			   }
				     
			   }else {
				   String sql="SELECT * FROM USER" ; 
				   Connection  con = (Connection) JDBCUtil.getConnection();
				   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
				   // pst.setString(1,xm);
				  //  pst.setInt(2, zt);
				   ResultSet result=(ResultSet) pst.executeQuery(sql);
				     while(result.next()) {
				    	 
				    	user=new User(result.getInt(1),result.getString(2),
				    			result.getString(3),result.getString(4),
				    			result.getInt(5),result.getString(6));
				    	a.add(user);
				    	System.out.println(result.getString(2));
				    	System.out.println(result.getString(5)); 
				   
			   }
			   }
			   
			   
			   
		   }catch(Exception e){
		
		
			   e.printStackTrace();
	
		   }
	     
		   return a;
		 
	   }
	   
	   
	   
	   public Boolean delete(String id) {
		      int  mid=Integer.parseInt(id);
		    Boolean flag=false;
		   try {
			String    sql="Delete From user Where id="+"'"+mid+"'";
		   Connection  con = (Connection) JDBCUtil.getConnection();
		   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
		   pst.executeUpdate();
		   flag=true;
		   }catch(Exception e){
		
		
			   e.printStackTrace();
			   
			   }
		   return flag; 
	   }

}


