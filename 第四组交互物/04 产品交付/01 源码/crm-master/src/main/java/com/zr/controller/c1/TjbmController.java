package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.service1.TjbmService;

import net.sf.json.JSONArray;

public class TjbmController extends HttpServlet{
	  
	TjbmService   tjbmService=new TjbmService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
     System.out.println(req.getParameter("bm"));
		String  bm= req.getParameter("bm");
		System.out.println(req.getParameter("bmxx"));
		String bmxx= req.getParameter("bmxx");
		tjbmService.tian(bm, bmxx);
	
		
		
		
		  
		  

		
		
	
}
}
