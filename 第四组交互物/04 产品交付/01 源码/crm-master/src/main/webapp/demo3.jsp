<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<script type="text/javascript">
<!-- 页面加载时-->
$(function(){
		 $("#btn1").click(function(){
			 var uname = $("#uname").val()
			 console.log(uname)
			 $.ajax({
				 url:"saveUser",
				 type:"post",
				 data:{"uname":uname},
				 dataType:"text",
				 success:function(res){
				    //获取通过resp回写的数据
					 if(res=="true"){
						 console.log(11)
					 }else{
						 console.log(22)
					 }
					
				 }
				 
			 })
		 })	 
})
</script>
<body>
		   <input id="uname" name="uname"/>
		   <button id="btn1">save</button>	
</body>
</html>