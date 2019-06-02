package com.zr.service;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ShowMenuService {

	
	public JSONArray  getMenu(){
		JSONArray   tree = new JSONArray();
		JSONObject  root = new JSONObject();
		root.put("id", 0);
		root.put("text", "xxx系统");
		//------second menu
		JSONObject  A3 = new JSONObject();
		A3.put("id", 1);
		A3.put("text","A");
		A3.put("state", "open");
		//--------	
		JSONObject  A4 = new JSONObject();
		A4.put("id", 2);
		A4.put("text","B");
		A4.put("state", "open");
		List children1 = new ArrayList();
		children1.add(A3);
		children1.add(A4);
		//--------first menu
		JSONObject  A1 = new JSONObject();
		A1.put("id", 1);
		A1.put("text","人员管理");
		A1.put("state", "closed");
		A1.put("children", children1);
		JSONObject  A2 = new JSONObject();
		A2.put("id", 2);
		A2.put("text","薪资管理");
		A2.put("state", "closed");
		A2.put("children", children1);
		List children = new ArrayList();
		children.add(A1);
		children.add(A2);
		root.put("children",children);
		tree.add(root);
		return   tree;
	}
}
