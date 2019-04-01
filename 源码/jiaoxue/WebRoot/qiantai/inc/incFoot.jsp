<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
        <div class="foot_pic"></div>
		<div class="left foot_msg">
			<br/>
			<br/>
			<br/>
			<p align="center">设为首页 - 加入收藏 - 友情链接 - 关于我们 - 
			<a target="_blank" href="<%=path %>/login.jsp" style="color:red;">管理员登录入口</a></p>
			<br/>
			<p align="center">Copyright 2019/4. All Rights Reserved.</p>
		</div>
		<div style="clear: both"></div>
  </body>
</html>
