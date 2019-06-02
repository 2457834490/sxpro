<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>人力资源管理系统 ——公告管理</title>

      
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
			 var ggmc = $("#ggmc").val()
			 var ggnr=$("#ggnr").val()
			 //console.log(uname)
			 $.ajax({
				 url:"ggcx",
				 type:"post",
				 data:{"ggmc":ggmc,"ggnr":ggnr},
				 dataType:"json",
				 success:function(res){
				
					console.log(res)
					showData(res)
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
             +data[i].ggmc+"</td><td>"
             +data[i].ggnr+"</td><td>"
             +data[i].cjsj+"</td><td>"
             +data[i].ggr+"</td><td>"
          
             +"<a href=www.baidu.com>修改</a>"+"</td></tr>";
             
             console.log(data[i].xm+"")
             $("#bb").append(str);         }
        
    }
</script>

</head>
<body>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	  <tr><td height="10"></td></tr>
	  <tr>
	    <td width="15" height="32">&nbsp;</td>
		<td class="main_locbg font2">&nbsp;&nbsp;&nbsp;当前位置：公告管理 &gt; 公告查询</td>
		<td width="15" height="32"><img src="../images/main_locright.gif" width="15" height="32"></td>
	  </tr>
	</table>
	
	<table width="100%" height="90%" border="0" cellpadding="5" cellspacing="0" class="main_tabbor">

	  <tr valign="top">
	    <td height="30">
		  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
		    <tr>
			  <td class="fftd">
			  	
				    <table width="100%" border="0" cellpadding="0" cellspacing="0">
					  <tr>
					    <td class="font3">
					    	公告名称：<input type="text" name="ggmc" id="ggmc"/>
					    	公告内容：<input type="text" name="ggnr" id="ggnr"/>
					    	 <input type="submit" value="搜索" id="search" name="search" class="search"/>
					    	<input id="delete" type="button" value="删除"/>
					    </td>
					  </tr>
					</table>
				
			  </td>
			</tr>
		  </table>
		</td>
	  </tr>
	  
	  <tr valign="top">
	    <td height="20">
		  <table width="70%" border="1" cellpadding="5" cellspacing="0" style="border:#c2c6cc 1px solid; border-collapse:collapse;table-layout: fixed;" id="bb" class="bb">
		    <tbody><tr class="main_trbg_tit" align="center">
			  <td>公告名称</td>
			  <td>公告内容</td>
			  <td>创建时间</td>
			  <td>公告人</td>		  
			  <td>操作</td>	 
			</tr>
			
			
			
		  </tbody></table>
		</td>
	  </tr>
	  </table>
	  		<div  class="c-pages">
	<div class="cp-item"> <span>共</span> <span id="cp-count">0</span> <span>条</span> </div>
	 <div class="cp-item"> <span id="curr-page">1</span> <span>/</span> <span id="total-page">1</span> </div> 
	 <div class="cp-item"> <button id="home">首页</button> <button id="prev">上页</button> <button id="next">下页</button> <button id="last">尾页</button> </div> 
	 <div class="cp-item"> <button id="goTo">转到</button> <input type="number" id="goToPage" /> <span>页</span> </div> 
	 </div>

</body>
</html>