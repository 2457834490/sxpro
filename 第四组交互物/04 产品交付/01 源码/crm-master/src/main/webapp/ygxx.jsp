<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title>工资管理系统————员工管理</title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/yg.css"/>
	<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(function(){
        	var newsLis = document.getElementById("bb");
        	
        	// total news count 
        	var count = newsLis.rows.length;

        	 // max count for one page 
        	var ONE_PAGE_COUNT = 5; 
        	// total pages
        	var totalPage = parseInt(count / ONE_PAGE_COUNT) + ((count % ONE_PAGE_COUNT) == 0? 0 : 1); 
        	 // init page 
        	var currPage = 1; 
        	 // function used to set news count 
        	function setUICount(count) { if (count == undefined) count = 0; $("#cp-count").text(count); }
        	  // function used to set total pages
        	function setUIPages(totalPage) { totalPage = Math.max(1, totalPage); $("#total-page").text(totalPage) } 
        	   // update curr page 
        	function setUICurrPage(currPage) { currPage = Math.max(1, currPage); $("#curr-page").text(currPage); } 
        	  // 传入显示的page参数，显示对应页面的新闻列表，隐藏其他列表
            function scanAllForShow(page) { // page at least 1 or max totalPage 
        	page = Math.max(1, Math.min(totalPage, page)); 
        	for (var i = 0;i < count;i++) {
        	if (parseInt(i / ONE_PAGE_COUNT) + 1 == page) $(newsLis.rows[i]).attr("style", "");
        	else $(newsLis.rows[i]).attr("style", "display: none");
        	} 
        	}
        			 
            function homePage() { 
        	 currPage = 1; scanAllForShow(currPage); 
        	 setUICurrPage(currPage); 
        	 }
            function nexePage() { 
        	 var last = currPage; 
        	 if (last == totalPage) return; 
        	 scanAllForShow(++currPage); 
        	 setUICurrPage(currPage); 
        	 } 
        	function prevPage() { 
        	var next = currPage; 
        	if (next <= 1) return;
        	 scanAllForShow(--currPage);
        	setUICurrPage(currPage); 
        	}
        	 function lastPage() {
        	currPage = totalPage; 
        	 scanAllForShow(currPage); 
        	setUICurrPage(currPage); 
        	} 
        	 
        	 function goToPage() { 
        	 var target = $("#goToPage").val();
        	if (target == undefined)
        	target = currPage;
        	target = Math.max(1, Math.min(totalPage, target)); 
        	 currPage = target; scanAllForShow(target);
        	 setUICurrPage(currPage); 
        	 $("#goToPage").val(""); 
        	 }
        							   // 页面加载完成后调用此函数 
        	 function init() { 
        	 newsLis = document.getElementById("bb");
        	 count = newsLis.rows.length;
        	console.log(count)
        	totalPage = count / ONE_PAGE_COUNT + ((count % ONE_PAGE_COUNT) == 0? 0 : 1); 
        	console.log(totalPage)
        	 currPage = 1; setUICount(count); 
        	 setUIPages(totalPage); 
        	  console.log(currPage)
        	setUICurrPage(currPage);
        	  scanAllForShow(currPage);
        									// 注册点击函数 
        	$("#home").click(homePage); 
        	$("#prev").click(prevPage); 
        	$("#next").click(nexePage);
        	$("#last").click(lastPage);
        	 $("#goTo").click(goToPage);
        	} 
		 $("#search").click(function(){
			 var zw = $("#zw").val()
			 var xm=$("#xm").val()
			 var sfzh=$("#sfzh").val()
			 var xb=$("#xb").val()
			 var sj=$("#sj").val()
			  var ssbm=$("#ssbm").val()
			/* console.log(zw)
			  console.log(xm)
			   console.log(sfzh)
			    console.log(xb)
			     console.log(sj)
			      console.log(ssbm)*/
			 $.ajax({
				 url:"ygxx",
				 type:"post",
				 data:{"zw":zw,"xm":xm,"sfzh":sfzh,"xb":xb,"sj":sj,"ssbm":ssbm},
				 dataType:"json",
				 success:function(res){
				    //获取通过resp回写的数据
					console.log(res)
				
					showData(res);
					  init();
					
				 }
				 
			 })
		 })	 
})

function showData(data) {
	console.log(data+"kkkk")
        var str = "";
        for (var i = 0; i < data.length; i++) {
             //拼接表格的行和列
             str = "<tr><td>"
             +data[i].xm+"</td><td>"
             +data[i].xb+"</td><td>"
             +data[i].sj+"</td><td>"
             +data[i].yx+"</td><td>"
             +data[i].sxzy+"</td><td>"
             +data[i].xl+"</td><td>"
             +data[i].sfzh+"</td><td>"
             +data[i].bm+"</td><td>"
             +data[i].dz+"</td><td>"
             +data[i].qq+"</td><td>"
             +"<a href=www.baidu.com>修改</a>"+"</td></tr>";
             
             console.log(data[i].xm+"")
             $("#bb").append(str);         }
        
    }
</script>



    <body>
	<div class="all" >
           <div class="a">
			   <table border="0" cellspacing="0" cellpadding="0" width="100%">
			<td>
				<tr><img src="img/pointer.gif"></tr>&nbsp;
				<tr>当前位置:</tr>
				<tr>&nbsp;员工管理</tr>
				<tr>&nbsp;>&nbsp;</tr>
				<tr>员工查询</tr>
			</td>
			</table>
			</div>
			<div class="b">
			 <table border="0" cellspacing="0" cellpadding="" class="aa">
				<tr>
				<td>职位:<select id="zw" name="zw">
						 <option value="1">前端工程师</option> 
                        <option value="2">后端工程师</option>
                        <option value="3">项目经理</option>
                         <option value="4">人事</option>
                         <option value="5">会计</option> 
                          <option value="6">CEO</option>
						</select></td>
					<td>姓名:<input   id="xm" name="xm" /></td>
					<td>身份证号码:<input  name="sfzh" id="sfzh" /></td>
				</tr>
				<tr>
				<td>性别:<select id="xb" name="xb">
							<option>--请选择性别--</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select></td>
					<td>手机:<input   name="sj" id="sj" /></td>
					<td>所属部门:<select name="ssbm" id="ssbm">
						<option value="0">技术部</option>
                        <option value="1">人事部</option>
                        <option value="2">财务部</option>
                        <option value="3">运营部</option>
						</select></td>
					<td><input type="submit" name="search" id="search" value="搜索" /></td>
					<td><input type="submit" name="delete" id="delete" value="删除" /></td>
				</tr>
			</table>
		     </div>
		<div class="c">
			<table border="1px" cellspacing="0" cellpadding="3px" width="95%" align="center" class="bb" bordercolor="darkgray" id="bb">
			<tr>
				
				<th >姓名</th>
				<th >性别</th>
				<th >手机号码</th>
				<th>邮箱</th>
				<th >专业</th>
				<th>学历</th>
				<th >身份证号码</th>
				<th >部门</th>
				<th>联系地址</th>
				<th >qq</th>
				<th>操作</th>
			</tr>
			
		     </table>
		</div>
			
		<div  class="c-pages">
	<div class="cp-item"> <span>共</span> <span id="cp-count">0</span> <span>条</span> </div>
	 <div class="cp-item"> <span id="curr-page">1</span> <span>/</span> <span id="total-page">1</span> </div> 
	 <div class="cp-item"> <button id="home">首页</button> <button id="prev">上页</button> <button id="next">下页</button> <button id="last">尾页</button> </div> 
	 <div class="cp-item"> <button id="goTo">转到</button> <input type="number" id="goToPage" /> <span>页</span> </div> 
	 </div>
     </div>

	</body>
</html>