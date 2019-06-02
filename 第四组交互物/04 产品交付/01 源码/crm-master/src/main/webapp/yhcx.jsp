<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/user.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
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
			 var xm = $("#xm").val()
			 var zt=$("#zt").val()
			 //console.log(uname)
			 $.ajax({
				 url:"yhcx",
				 type:"post",
				 data:{"xm":xm,"zt":zt},
				 dataType:"json",
				 success:function(res){
				    //获取通过resp回写的数据
					console.log(res)
					//现在要将数据写在本页面  利用js或者jquey操作页面对应的元素
					//$("#uname").val(res)
					showData(res);
					   init();
					
				 }
				 
			 })
		 })	 
		 
		
		 
		
		 
		
		
})

//展示数据
  function showData(data) {
	console.log(data+"kkkk")
        var str = "";
        for (var i = 0; i < data.length; i++) {
             //拼接表格的行和列
             var id=data[i].id ;
             str = "<tr id="+data[i].id+"><td>" 
             + data[i].xm +
             "</td><td>" + 
             data[i].zh + "</td><td>"+
             data[i].mm +
             "</td><td>" + 
             data[i].zt +"</td><td>"+
             data[i].rq+"</td><td>"+"<input type='button' name='delete' value='删除' style='width:80px'onclick='delete1("+id+")'/>"+
             "</td></tr>";
            //追加到table中
            console.log(str)
             $("#aa").append(str);         }
        
    }
    
      function delete1(m){
	  $("tr[id='" + m + "']").remove();
	 
		  $.ajax({
				 url:"yhcx",
				 type:"get",
				 data:{"id":m},
				 dataType:"json",
				 success:function(res){ 
					console.log(res)
					//showData1(res);
					  init();
					 
					}
				 
			 })
     }
      
     
    	    
   
</script>
</head>
<body>
<div class="all" >
           <div class="a">
			   <table border="0" cellspacing="0" cellpadding="0" width="100%">
			<td>
				<tr>&nbsp;&nbsp;<img src="img/pointer.gif"></tr>&nbsp;
				<tr>当前位置:</tr>
				<tr>&nbsp;用户管理</tr>
				<tr>&nbsp;>&nbsp;</tr>
				<tr>用户查询</tr>
			</td>
			</table>
			</div>
			<div class="b">
			 <table border="0" cellspacing="0" cellpadding="" class="aa">
				<tr>
					<td>&nbsp;&nbsp;&nbsp;用户名:<input id="xm" name="xm" /></td>
					<td>用户状态:<select id="zt" >
							<option value="3">全部</option>
							<option value="1">普通用户</option>
							<option value="2">管理员</option>
						</select></td>
					<td><input type="submit" name="search" id="search" value="搜索" /></td>
					<td><input type="submit" name="delete" id="delete" value="删除" /></td>
				</tr>
			</table>
		     </div>
		     	<div class="d">
			<table border="1px" cellspacing="0" cellpadding="2px" width="80%" class="bb" bordercolor="darkgray" margin-left:80px;>
		
			
		     </table>
		</div>
		<div class="c">
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