package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.User;
import com.zr.service.LoginService;
import com.zr.service1.YhcxService;

import net.sf.json.JSONArray;

public class YhcxController extends HttpServlet{
			

			YhcxService yhcxService=new YhcxService();
			List<User> u;
			User user;
	
			
			@Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {
				// TODO Auto-generated method stub
				String id=req.getParameter("id");
			//	int zt=(int)(Integer.parseInt(req.getParameter("zt")));
				System.out.println(id);
				 Boolean a=yhcxService.delete(id);
				System.out.println(a);
				//List<User> u=yhcxService.yhcx(xm, zt);
				//JSONArray data=JSONArray.fromObject(u);
				//System.out.println(data);
			//	doPost(req,resp);
				//req.getRequestDispatcher("dl.jsp").forward(req, resp);
			}
			
			@Override
			protected void doPost(HttpServletRequest req, HttpServletResponse resp)
					throws ServletException, IOException {
				// TODO Auto-generated method stub
				//假定你拿到数据之后，我们就可以做对应的逻辑处理
			
				System.out.println(req.getParameter("xm"));
				System.out.println(req.getParameter("zt"));
				String xm=req.getParameter("xm");
				int zt=(int)(Integer.parseInt(req.getParameter("zt")));
				List<User> u=yhcxService.yhcx(xm, zt);
				JSONArray data=JSONArray.fromObject(u);
				System.out.println(data);
				resp.setCharacterEncoding("utf-8");
				  PrintWriter respWritter = resp.getWriter();
				              /*将JSON格式的对象toString()后发送*/
				    respWritter.append(data.toString());
				    respWritter.flush();
				    respWritter.close();
				
			/*	
			 * 
			 * PrintWriter  wr =  resp.getWriter();
			 * wr.write(u.get(i).toString());
				wr.flush();
				wr.close();
				*/
				//String  zh= req.getParameter("zh");
				//System.out.println(req.getParameter("mm"));
				//String mm = req.getParameter("mm");
				//抽象到服务层上面 服务层就代表对应的逻辑
				//String result =loginService.loginByName(uname);
			
				/*PrintWriter  wr =  resp.getWriter();
				wr.write(result);
				wr.flush();
				wr.close();*/
				
			
	}

		
			

}
