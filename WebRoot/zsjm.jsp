<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zsjm.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="zsjm.js"></script>
    <style>
    .wdqd{
        font-size:30px;   
        padding-top:10px; 
        color:rgb(255,184,72);
        display:block;
    }
    .qyzs{
        font-size:20px;   
        padding-top:10px; 
        color:rgb(75,141,248);
        display:inline-block;
    }
    #img1{
      height:150px;
      width:150px;
    }
    .qytp{
       width:120px;
       height:150px;
    }
    </style>
  </head>
  
  <body>
   <div class="container-fluid" id='content'>

				<!-- BEGIN PAGE HEADER-->

				<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>Layout</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

									</select>

								</label>

								<label>

									<span>Header</span>

									<select class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

									</select>

								</label>

								<label>

									<span>Sidebar</span>

									<select class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

								<label>

									<span>Footer</span>

									<select class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER -->          

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">

							首页 <small>首页</small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a  href="javascript:;" class='hdsy'>回到首页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li><a  href="javascript:;" class='hdsy'>展示界面</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- BEGIN PIE CHART PORTLET-->

				<div class="row-fluid" >

					<div class="span6">

						<div class="portlet box yellow">

							<div class="portlet-title">

								<div class="caption"><i class="icon-reorder"></i>我的球队</div>

								<div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								<div id="pie_chart_8" class="chart">
                                        <span class="wdqd">球队名称：${sessionScope.team.team_name}</span></br>
                                        <span class="wdqd">球队宣言：${sessionScope.team.team_contents}</span></br>
                                        <span class="wdqd">球队图标：<img id='img1' src='${sessionScope.team.team_mark}'/></span>
                                </div>

							</div>

						</div>
                   					

					</div>
                    
					<div class="span6">

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-reorder"></i>球员风采</div>

								<div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
	                                <a href="javascript:;" class="reload"></a>
									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								
                                <div id="pie_chart_10" class="chart">
                                       
                                </div>
								
							</div>

						</div>

						

					</div>

				</div>

				<!-- END PIE CHART PORTLET-->


				<!-- END PAGE CONTENT-->
                <div class="portlet box green">

							<div class="portlet-title">

								<div class="caption"><i class="icon-reorder"></i>赛程展示</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								<div id="chart_3" class="chart">
								
								   <table class="table table-striped table-hover table-bordered" id="sample_editable_1">

									<thead>

										<tr>

											<th>队伍A</th>

											<th>队伍B</th>

											<th>地点</th>

											<th>时间</th>

											<th>队伍A得分</th>
											
											<th>队伍B得分</th>

										</tr>

									</thead>

									<tbody id='tb'>

										
										

									</tbody>

								</table>
								</div>
                                      
							</div>

						</div>


			</div>
     
			<!-- BEGIN PAGE CONTAINER-->     

		</div>

		<!-- END PAGE --> 

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2013 &copy; Metronic by keenthemes.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>
  </body>
</html>
