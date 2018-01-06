<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>Welcome to visit HeBei-govshop!</title>	
	<!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="style/css/bootstrap.min.css"> 
    <script language="javascript">
		window.location.href="index";
	</script>
  </head>  
  <body>  
  </body>
</html>