package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Yg;
import com.zr.service.LoginService;
import com.zr.service1.TjygService;

public class TjygController extends HttpServlet {
	
		
		//LoginService  loginService = new LoginService();
		List<Yg> tjyg=new ArrayList<Yg>();
		 TjygService tj1=new  TjygService();
		 Yg yg;
		
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
			System.out.println(req.getParameter("name"));
			System.out.println(req.getParameter("identify"));
			System.out.println(req.getParameter("xb"));
			
			System.out.println(req.getParameter("bm"));
			System.out.println(req.getParameter("xl"));
			System.out.println(req.getParameter("yx"));
			System.out.println(req.getParameter("sj"));
			System.out.println(req.getParameter("dh"));
			System.out.println(req.getParameter("csrq"));
			System.out.println(req.getParameter("mz"));
			System.out.println(req.getParameter("zy"));
			System.out.println(req.getParameter("ah"));
			System.out.println(req.getParameter("bz"));
			System.out.println(req.getParameter("zm"));
			System.out.println(req.getParameter("qq"));
			System.out.println(req.getParameter("dz"));
			System.out.println(req.getParameter("yb"));
			System.out.print("部门"+req.getParameter("bm"));
		
			String xm = req.getParameter("name");
			String sfzh = req.getParameter("identify");
			String xb = req.getParameter("xb");
			String zy = req.getParameter("zw");
			String xl = req.getParameter("xl");
			String yx = req.getParameter("yx");
			String sj = req.getParameter("sj");
			String dh = req.getParameter("dh");
			int   bm = Integer.parseInt(req.getParameter("bm"));
			String zzmm = req.getParameter("zm");
			String qq = req.getParameter("qq");
			String dz = req.getParameter("dz");
			String yb = req.getParameter("yb");
			String birth = req.getParameter("csrq");
			
			String mz = req.getParameter("mz");
			
			
			String sxzy = req.getParameter("zy");
			String ah = req.getParameter("ah");
			String bz = req.getParameter("bz");
			System.out.print("部门1"+req.getParameter("bm"));
			
			yg=new Yg(2,xm,sfzh,xb,zy,xl,yx,sj,dh,
					zzmm, qq,dz,yb,birth,mz,sxzy,ah,bz,bm);
			
			tjyg.add(yg);
			Boolean a=tj1.tian(tjyg);
			System.out.println(a);
			
			
			
		/*	 Yg yg=new Yg(1,"panpan");
			 tjyg.add(yg);
			
			 boolean a=tj1.tian(tjyg);*/
			//抽象到服务层上面 服务层就代表对应的逻辑
		//	String result =loginService.loginByName(uname);
			//1.如果是同步的方式 
			//1.1 先将需要的数据存储
			//req.getSession().setAttribute("result", result);
			//1.2 返回到对应页面的当中(同步的动作)
			//req.getRequestDispatcher("demo1.jsp").forward(req, resp);
			//通过异步的方式回写数据
		/*	PrintWriter  wr =  resp.getWriter();
			wr.write(result);
			wr.flush();
			wr.close();
			*/
		
}

}
