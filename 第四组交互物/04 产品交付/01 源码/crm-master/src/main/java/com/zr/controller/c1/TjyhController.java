package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.User;
import com.zr.model.Yg;
import com.zr.service.LoginService;
import com.zr.service1.TjyhService;

public class TjyhController extends HttpServlet{

	
		TjyhService tjyh=new TjyhService();
		List<User> yh=new ArrayList<User>();
		
		
		
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
			System.out.println(req.getParameter("zh"));
			System.out.println(req.getParameter("mm"));
			System.out.println(req.getParameter("zt"));
			System.out.println(req.getParameter("xm"));
			String zh = req.getParameter("zh");
			
			String mm = req.getParameter("mm");
			
			String zt = req.getParameter("zt");
			
			String xm = req.getParameter("xm");
			  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	          System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
			User user=new User(5,xm,zh,mm,1,df.format(new Date()));
			yh.add(user);
			boolean a=tjyh.addyh(yh);
			System.out.println(a);
			
			//抽象到服务层上面 服务层就代表对应的逻辑
			//String result =loginService.loginByName(uname);
			//1.如果是同步的方式 
			//1.1 先将需要的数据存储
			//req.getSession().setAttribute("result", result);
			//1.2 返回到对应页面的当中(同步的动作)
			//req.getRequestDispatcher("demo1.jsp").forward(req, resp);
			//通过异步的方式回写数据
			/*PrintWriter  wr =  resp.getWriter();
			wr.write(result);
			wr.flush();
			wr.close();
               */			
		
}
}
