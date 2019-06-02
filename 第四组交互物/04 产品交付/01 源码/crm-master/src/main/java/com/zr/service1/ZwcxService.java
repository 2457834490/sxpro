package com.zr.service1;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.Bm;
import com.zr.model.Zw;
import com.zr.util.JDBCUtil;

public class ZwcxService {
	
	
	List<Zw> a=new ArrayList<Zw>();
	Zw zw;
	   public List<Zw> yhcx(String zwmc){
		 
	
		   try {
	   String sql="SELECT * FROM Zw WHERE zwmc = "+"'"+zwmc+"'";
	   
	   Connection  con = (Connection) JDBCUtil.getConnection();
	   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
	
	   ResultSet result=(ResultSet) pst.executeQuery(sql);
	     while(result.next()) {
	    	 
	    	zw=new Zw(result.getInt(1),result.getString(2),result.getString(3));
	    	a.add(zw);
	    //	System.out.println(result.getString(2));
	    	
	    	 
	     }
	
		   }catch(Exception e){
		
		
			   e.printStackTrace();
	
		   }
	     
		   return a;
	   }

}
