<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>人力资源管理系统————部门管理</title>
		<link rel="stylesheet" type="text/css" href="../../themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="../../themes/icon.css">
		<link rel="stylesheet" type="text/css" href="../demo.css">
		
	</head>
	<link rel="stylesheet" type="text/css" href="css/user.css"/>
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
			 var bm = $("#bm").val();
		
			 $.ajax({
				 url:"bmcx",
				 type:"post",
				 data:{"bm":bm},
				 dataType:"json",
				 success:function(res){
				
					console.log(res);
					showData(res);
					  init();
					
				 }
				 
			 })
		 })	 
})

   function showData(data) {
	console.log(data+"攀攀带你飞")
        var str = "";
        for (var i = 0; i < data.length; i++) {
            
             str = "<tr><td>"
             +data[i].bm+"</td><td>"
             +data[i].bmxx+"</td><td>"
             +"<a href=www.baidu.com>修改</a>"
              +"</td></tr>";
             
             //console.log(data[i].xm+"")
             $("#bb").append(str);    }
        
    }
</script>
	<body>
	<div class="all" >
           <div class="a">
			   <table border="0" cellspacing="0" cellpadding="0" width="100%">
			<td>
				<tr>&nbsp;&nbsp;<img src="img/pointer.gif"></tr>&nbsp;
				<tr>当前位置:</tr>
				<tr>&nbsp;部门管理</tr>
				<tr>&nbsp;>&nbsp;</tr>
				<tr>部门查询</tr>
			</td>
			</table>
			</div>
			<div class="b">
			 <table border="0" cellspacing="0" cellpadding="" class="aa">
				<tr>
					<td>&nbsp;&nbsp;&nbsp;部门名:<input  name="bm" id="bm" class="bm"/></td>
				
					<td><input type="submit" value="搜索" id="search" name="search" class="search"/></td>
					<td><input type="submit" name="delete" id="delete" value="删除"  class="delete"/></td>
				</tr>
			</table>
		     </div>
		<div class="c">
			<table border="1px" cellspacing="0" cellpadding="3px" width="95%" align="center" class="bb" id="bb" bordercolor="darkgray">
			<tr>
			    <th >部门名称</th>
				<th >详细信息</th>
				<th align="center">操作</th>
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