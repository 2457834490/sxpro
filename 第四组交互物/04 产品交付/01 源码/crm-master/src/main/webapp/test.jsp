<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>人力资源管理系统————部门管理</title>
	
		
	</head>
	
	
 <body>
   <!-- 	<ul id="news-lis"> 
   	<li> <div class="news-item">  </div> </li> 
		<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻2标题</a> <span class="news-date">2017/12/12<span> </div> </li>
		 <li> <div class="news-item"> <a class="news-name" href="info/1976/4956.htm" target="_blank">新闻3标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	 <li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻4标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	 <li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻5标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻6标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻7标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻8标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻9标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻10标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻11标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻12标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻13标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	<li> <div class="news-item"> <a class="news-name" href="info/1976/4957.htm" target="_blank">新闻14标题</a> <span class="news-date">2017/12/12<span> </div> </li>
	</ul>
	 -->
	
	
	<table border="1px" cellspacing="0" cellpadding="3px" width="95%" align="center" class="bb" bordercolor="darkgray" id="aa">
			<tr>
				
				<th >用户名</th>
				<th >账号</th>
				<th >密码</th>
				<th>状态</th>
			    <th >创建时间</th>
				<th>修改</th>
			</tr>
		
			
		
		
			
	
		     </table>
<div  class="c-pages">
	<div class="cp-item"> <span>共</span> <span id="cp-count">0</span> <span>条</span> </div>
	 <div class="cp-item"> <span id="curr-page">1</span> <span>/</span> <span id="total-page">1</span> </div> 
	 <div class="cp-item"> <button id="home">首页</button> <button id="prev">上页</button> <button id="next">下页</button> <button id="last">尾页</button> </div> 
	 <div class="cp-item"> <button id="goTo">转到</button> <input type="number" id="goToPage" /> <span>页</span> </div> 
	 </div>

	</body>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
		var newsLis = document.getElementById("aa");
		
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
									  newsLis = document.getElementById("aa");
									  count = newsLis.rows.length;
										console.log(count)
									  totalPage = count / ONE_PAGE_COUNT + ((count % ONE_PAGE_COUNT) == 0? 0 : 1); 
										console.log(totalPage)
									  currPage = 1; setUICount(count); setUIPages(totalPage); 
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
										   
										   window.onload = function() {
											   init();
												}

		
		
		
		
		
		
	</script>

</html>