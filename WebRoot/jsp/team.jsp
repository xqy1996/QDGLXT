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
<title>球队管理</title>
</head>
<body>
      <div>
       <img src="<%=basepath%>/images/1.jpg" width="100%" height="350px"/>
       </div>
<script type="text/javascript" src="jsp/team.js"></script>
<div style="overflow: auto; width: 100%; height:900px">  
<table id="gcdg" class="easyui-datagrid" data-options="fit:true,fitColumns:true,rownumbers:true,pagination:true,pageSize:10">
			<thead>
				<tr>
					<th data-options="field:'ck',width:100,checkbox:true"></th>
					<th data-options="field:'team_name',width:100">球队名称</th>
					<th data-options="field:'team_address',width:100">球队地址</th>
					<th data-options="field:'team_contents',width:100">球队宣言</th>
					<th data-options="field:'team_funds',width:100">资金管理</th>
					<th data-options="field:'operation',width:100,formatter:options">操作</th>
				</tr>
			</thead>
		</table>
		</div>
		<div id="gcmc_win">
		</div>
</body>
</html>