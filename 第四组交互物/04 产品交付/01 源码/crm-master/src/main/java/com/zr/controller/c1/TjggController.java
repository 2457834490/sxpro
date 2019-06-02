package com.zr.controller.c1;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.User;
import com.zr.service1.TjggService;
import com.zr.service1.TjyhService;

public class TjggController extends HttpServlet{


	
	TjggService tjggService=new TjggService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//假定你拿到数据之后，我们就可以做对应的逻辑处理
		req.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html;charset=utf-8");
		System.out.println(req.getParameter("ggmc"));
		System.out.println(req.getParameter("ggr"));
		System.out.println(req.getParameter("ggnr"));
	
		String ggmc = req.getParameter("ggmc");
		
		String ggr= req.getParameter("ggr");
		
		String ggnr= req.getParameter("ggnr");
	
		
	//	String xm = req.getParameter("xm");
		  SimpleDateFormat cjsj = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
          System.out.println(cjsj.format(new Date()));// new Date()为获取当前系统时间
	           
          Boolean a=tjggService.tian(ggmc, ggnr, ggr,cjsj.format(new Date()));
		
				
	
}

}
