package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Dl;
import com.zr.service.LoginService;
import com.zr.service1.DlService;

public class DlController extends HttpServlet{
	

		
		//LoginService  loginService = new LoginService();
		DlService dlservice=new DlService();
		Dl dl;
		
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
			System.out.println(req.getParameter("zh"));
			String  zh= req.getParameter("zh");
			System.out.println(req.getParameter("mm"));
			String mm = req.getParameter("mm");
			   dl=dlservice.dl(zh, mm);
			  String rzh=dl.getZh();
			  System.out.print(rzh);
			  String rmm=dl.getMm();
			  System.out.print(rmm);
			  System.out.println(req.getParameter("zh"));
			  System.out.println(req.getParameter("mm"));
			  //req.getRequestDispatcher("main.jsp").forward(req, resp); 
			  if(zh.equals(rzh)&&mm.equals(rmm)) {
					req.getRequestDispatcher("main.jsp").forward(req, resp);  
			  }else {
				  String error="账号和密码错误";
				  req.getSession().setAttribute("result", error);
				  req.getRequestDispatcher("index.jsp").forward(req, resp); 
				  
				  
			  }
	
			
			
		
}

}
