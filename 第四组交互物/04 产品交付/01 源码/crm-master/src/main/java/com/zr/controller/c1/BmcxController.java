package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Bm;
import com.zr.model.Gg;
import com.zr.service1.BmcxService;
import com.zr.service1.GgcxService;

import net.sf.json.JSONArray;

public class BmcxController  extends HttpServlet{
	
	BmcxService bmcxService;
	 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bm=req.getParameter("bm");
		bmcxService=new BmcxService();
		 List<Bm> data1=bmcxService.yhcx(bm);
		 JSONArray data=JSONArray.fromObject(data1);
		 System.out.println(data);
		 
			resp.setCharacterEncoding("utf-8");
			  PrintWriter respWritter = resp.getWriter();
			    respWritter.append(data.toString());
			    respWritter.flush();
			    respWritter.close();
    // System.out.println(req.getParameter("bm"));
		
	
	/*	 JSONArray data=JSONArray.fromObject(a1);
		 	resp.setCharacterEncoding("utf-8");
			  PrintWriter respWritter = resp.getWriter();
			    respWritter.append(data.toString());
			    respWritter.flush();
			    respWritter.close();
		*/
	
}

}
