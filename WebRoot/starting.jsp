<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();//项目名称
	//  http://localhost:8080/SCZSGL/
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getLocalPort()+path +"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%= basepath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="sys/easyui/jquery.min.js"></script>
<script type="text/javascript" src="sys/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="sys/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="sys/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="sys/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="sys/icons/iconextension.css">
<title>首发</title>
<script type="text/javascript" src="jsp/starting.js"></script>
</head>
<body>
<table id="dg"></table>
<div id="gcmc_win">
		</div>
</body>
</html>