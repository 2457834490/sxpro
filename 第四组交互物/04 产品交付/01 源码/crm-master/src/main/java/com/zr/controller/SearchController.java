package com.zr.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zr.model.Student;
import com.zr.service.StudentService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class SearchController extends  HttpServlet{
	
	StudentService  studentService   = new StudentService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp){
		  //有一个服务可以获取所有学生的信息
		List<Student>  students = studentService.selectStudnet();
		 // JSONObject JSONArray  方便的对java对象进行转换
		JSONArray j = JSONArray.fromObject(students);
		System.out.println(j);
		//-----------------
		JSONArray j1  =  new JSONArray();
		//-----------------
//		JSONObject  j2 = JSONObject.fromObject(students);
//		System.out.println(j2);
//		JSONObject  j3 = new JSONObject();
//		j3.put("total", 3);
//		j3.put("students", students);
//		System.out.println(j3);
		Map  m = new HashMap();
		m.put("total", 3);
		m.put("students", students);
		JSONObject  j2  = JSONObject.fromObject(m);
		try {
			PrintWriter pw = resp.getWriter();
			pw.write(j2.toString());
			pw.flush();
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	    
		  

	}


}
