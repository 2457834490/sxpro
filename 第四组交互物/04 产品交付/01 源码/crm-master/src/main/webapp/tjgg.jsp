<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>人力资源管理系统 ——添加公告</title>
		<script type="text/javascript">
		
	function submit(){
	        	var ggmc = $("#ggmc");
	        	var ggnr = $("#ggnr");
	        	var msg = "";
	        	if ($.trim(ggmc.val()) == ""){
					msg = "公告标题不能为空！";
					ggmc.focus();
				}
	        	else if($.trim(ggmc.val()).length <= 2){
	        		msg = "请输入两个字符以上的标题！";
	        		ggmc.focus();
	        	}
	        	else if($.trim(ggnr.val()) == ""){
	        		msg = "公告内容不能为空";
	        		ggnr.focus();
	        	}
	        	if (msg != ""){
					$.ligerDialog.error(msg);
					return false;
				}else{
					return true;
				}
	        	//$("#noticeForm").submit();
	        	
	        //});
	    }		
		</script>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			 <tr><td height="10"></td></tr>
			 <tr>
			    <td width="15" height="32">&nbsp;</td>
				<td class="main_locbg font2">&nbsp;&nbsp;&nbsp;当前位置：公告管理  &gt;  添加公告</td>
				<td width="15" height="32"><img src="../images/main_locright.gif" width="15" height="32"></td>
			 </tr>
		</table>
	

		<table width="100%" height="90%" border="0" cellpadding="10" cellspacing="0" class="main_tabbor">
		  	<tr valign="top">
			    <td>
			   

    	 			<input type="hidden" name="flag" value="2">
				  <table width="100%" border="0" cellpadding="0" cellspacing="10" class="main_tab">
					    <tr><td class="font3 fftd">
					    <form action="tjgg" method="post">
					                公告标题：<input  name="ggmc" size="30" id="ggmc"/>   
					                公告人：<input  name="ggr" size="30" id="ggr"/>
					    	  <span style="color: #ff0000;"></span>
					    	</td>
					    </tr>
						<tr><td class="main_tdbor"></td></tr>
						
						<tr><td class="font3 fftd">公告内容：<br/>
							<textarea name="ggnr" cols="88" rows="11" id="ggnr"></textarea>
						</td></tr>
						<tr><td class="main_tdbor"></td></tr>
						
						<tr><td class="font3 fftd">
								<input type="button" onClick="submit()" value="添加">
								<input type="reset" value="重置">
						</td></tr>
						<tr><td class="main_tdbor"></td></tr>
					</form>
				  </table>
				
				</td>
		  	</tr>
		</table>
		<div style="height:10px;"></div>
	</body>
</html>