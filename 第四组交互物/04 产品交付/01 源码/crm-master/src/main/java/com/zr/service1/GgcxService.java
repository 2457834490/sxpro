package com.zr.service1;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.zr.model.Gg;
import com.zr.model.User;
import com.zr.util.JDBCUtil;

public class GgcxService {
	             List<Gg> ggcx=new ArrayList<>();
	             Gg gg;
	   public List<Gg> ggcx(String ggmc,String ggnr){
		//   System.out.println(xm+zt);
	
		   try {
	   String sql="SELECT * FROM gg WHERE ggmc = "+"'"+ggmc+"'"+"and  ggnr LIKE"+"'%"+ggnr+"%'";
	   
	   Connection  con = (Connection) JDBCUtil.getConnection();
	   PreparedStatement  pst = (PreparedStatement) con.prepareStatement(sql);
	
	   ResultSet result=(ResultSet) pst.executeQuery(sql);
	     while(result.next()) {
	    	 
	    	gg=new Gg(result.getInt(1),result.getString(2),
	    			result.getString(3),result.getString(4),
	    			result.getString(5));
	    	ggcx.add(gg);
	    	System.out.println(result.getString(3));

	     }
	
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	     
		   return ggcx;
	   }
	

}
