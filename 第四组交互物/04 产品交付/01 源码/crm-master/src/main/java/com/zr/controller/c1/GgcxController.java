package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Dl;
import com.zr.model.Gg;
import com.zr.service1.DlService;
import com.zr.service1.GgcxService;

import net.sf.json.JSONArray;

public class GgcxController extends HttpServlet{
	
	  GgcxService ggcxService=new GgcxService();
	    List<Gg> a1;
        Gg gg;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
       System.out.println(req.getParameter("ggmc"));
		String  ggmc= req.getParameter("ggmc");
		System.out.println(req.getParameter("ggnr"));
		String ggnr= req.getParameter("ggnr");
		 List<Gg> a1=ggcxService.ggcx(ggmc, ggnr);
		 JSONArray data=JSONArray.fromObject(a1);
		 	resp.setCharacterEncoding("utf-8");
			  PrintWriter respWritter = resp.getWriter();
			    respWritter.append(data.toString());
			    respWritter.flush();
			    respWritter.close();
		
		
		  
		  

		
		
	
}

	
}
