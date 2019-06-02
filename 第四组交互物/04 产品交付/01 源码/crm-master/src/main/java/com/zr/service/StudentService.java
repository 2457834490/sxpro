package com.zr.service;

import java.util.ArrayList;
import java.util.List;

import com.zr.model.Student;

public class StudentService {

	public List<Student>  selectStudnet(){
		//假定我们从数据库拿到学生数据 多个学生对象组成的集合
		Student s1 = new Student(1,"a",20);
		Student s2 = new Student(2,"b",20);
		Student s3 = new Student(3,"c",20);
		List<Student> students = new ArrayList<Student>();
		students.add(s1);
		students.add(s2);
		students.add(s3);
		return  students;
	}
	
	

}
