<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- import easyui-css -->
<link rel="stylesheet" type="text/css"
	href="themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">
<!-- 引入easyu的js文件 -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<script type="text/javascript">
$(function(){
	$(function(){    
		$('#btn').linkbutton({    
			//属性
		    iconCls: 'icon-search',
		    text:'点击我',
		    //事件
		    onClick:function(){
		    	//方法的使用
		    	$('#btn').linkbutton('resize', {
		    		width: 100,
		    		height: 32
		    	});

		    	}
		});  
	}); 
})
</script>
<body>
<a id="btn" href="#" class="easyui-linkbutton" ></a>  
</body>
</html>