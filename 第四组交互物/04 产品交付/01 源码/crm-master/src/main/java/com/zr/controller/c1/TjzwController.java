package com.zr.controller.c1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.service1.TjbmService;
import com.zr.service1.TjzwService;

public class TjzwController extends HttpServlet{
	
	TjzwService tjzwService=new TjzwService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
         System.out.println(req.getParameter("zwmc"));
		String  zwmc= req.getParameter("zwmc");
		System.out.println(req.getParameter("xxxx"));
		String xxxx= req.getParameter("xxxx");
		   tjzwService.tian(zwmc, xxxx);
		
	
		
	
}
}
