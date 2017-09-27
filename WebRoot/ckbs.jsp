<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


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
    <script src="ckbs.js"></script>
    <script src="history-0.4.js"></script>
  
   
<div class="row-fluid">

	<div class="span12">

		<!-- BEGIN PAGE TITLE & BREADCRUMB-->

		<h3 class="page-title">

			查看比赛<small>查找比赛<c:forEach items="${requestScope.list }" var="team2">
			team2.cr_time
						</c:forEach></small>

		</h3>

		<ul class="breadcrumb">

			<li>

				<i class="icon-home"></i>

				<a  href="javascript:;" class='hdsy'>首页</a> 

				<i class="icon-angle-right"></i>

			</li>

			<li><a  href="javascript:;" id='sx'>查看比赛</a></li>

		</ul>

		<!-- END PAGE TITLE & BREADCRUMB-->

	</div>

</div>

<!-- END PAGE HEADER-->
<div class="row-fluid">
                     
					<div class="span12">

						<!-- BEGIN EXAMPLE TABLE PORTLET-->

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-edit"></i>比赛列表</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">
                      
								<div class="clearfix">
                                            
									<div class="btn-group">
                                       <label>
                                    	      <select id='bszt' style="width: 80px">
                                                 <option value ="3">全部</option>
                                                 <option value ="0">未开始</option>
                                                 <option value ="1">已结束</option>
                                              </select>
                                              <select id='xlk'style="width: 80px">
                                                 <option value ="1">地点</option>
                                                 <option value ="2">编号</option>
                                                 <option value ="3">比赛时间</option>
                                              </select>
                      
										<input type='text' id='text' />
										
										<input type='button' value='搜索' id='ss'/>
                                       </label>
                                     
                                       
									</div>

									<div class="btn-group pull-right">

										<button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>

										</button>

										<ul class="dropdown-menu pull-right">

											<li><a href="#">Print</a></li>

											<li><a href="#">Save as PDF</a></li>

											<li><a href="#">Export to Excel</a></li>

										</ul>

									</div>

								</div>
                                
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">

									<thead>

										<tr>

											<th>比赛编号</th>

											<th>比赛地点</th>

											<th>甲队</th>

											<th>甲队得分</th>

											<th>乙队</th>
											
											<th>乙队得分</th>

											<th>比赛时间</th>
											
											<th>赛程管理</th>

										</tr>

									</thead>

									<tbody id='tb'>

										

										

									</tbody>

								</table>

							</div>

						</div>

						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>

<!-- BEGIN PAGE CONTENT-->



<!-- END PAGE CONTENT-->

<script>
  
	$('.select2').select2({

	   placeholder: "Select an option",

	   allowClear: true

	});
</script>