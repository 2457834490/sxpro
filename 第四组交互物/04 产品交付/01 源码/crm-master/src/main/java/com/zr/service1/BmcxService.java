package com.zr.service1;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.Bm;
import com.zr.util.JDBCUtil;

public class BmcxService {
	
	
	List<Bm> a=new ArrayList<Bm>();
	Bm bm;
	   public List<Bm> yhcx(String bmm){
		 
	
		   try {
	   String sql="SELECT * FROM Bm WHERE bm = "+"'"+bmm+"'";
	   
	   Connection  con = (Connection) JDBCUtil.getConnection();
	   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
	
	   ResultSet result=(ResultSet) pst.executeQuery(sql);
	     while(result.next()) {
	    	 
	    	bm=new Bm(result.getInt(1),result.getString(2),result.getString(3));
	    	a.add(bm);
	    //	System.out.println(result.getString(2));
	    	
	    	 
	     }
	
		   }catch(Exception e){
		
		
			   e.printStackTrace();
	
		   }
	     
		   return a;
	   }

}
