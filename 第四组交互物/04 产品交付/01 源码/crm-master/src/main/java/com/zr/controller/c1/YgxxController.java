package com.zr.controller.c1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Yg;
import com.zr.service1.YgxxService;

import net.sf.json.JSONArray;

public class YgxxController extends HttpServlet{

	List<Yg> yg;
	YgxxService ys=new YgxxService();
	
	
			
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		/*System.out.println(req.getParameter("zw"));
		System.out.println(req.getParameter("xm"));
		System.out.println(req.getParameter("sfzh"));
		System.out.println(req.getParameter("xb"));
		System.out.println(req.getParameter("sj"));
		System.out.println(req.getParameter("ssbm"));*/
		
		String zw = req.getParameter("zw");
		String xm = req.getParameter("xm");
		String sfzh = req.getParameter("sfzh");
		String xb = req.getParameter("xb");
		String sj = req.getParameter("sj");
		String ssbm = req.getParameter("ssbm");
		List<Yg> yg=ys.ygxx(xm, sfzh, xb, sj, Integer.parseInt(ssbm));
		JSONArray data=JSONArray.fromObject(yg);
      	System.out.println(data);
      	resp.setCharacterEncoding("utf-8");
		  PrintWriter respWritter = resp.getWriter();
		              /*将JSON格式的对象toString()后发送*/
		    respWritter.append(data.toString());
		    respWritter.flush();
		    respWritter.close();
		
		
	//	yg.get(0);
	//	System.out.println();
		
		
		//String result =loginService.loginByName(uname);
	
		//PrintWriter  wr =  resp.getWriter();
		/*wr.write(result);
		wr.flush();
		wr.close();
		*/
		
	}

	

}
