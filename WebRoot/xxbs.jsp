<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<link rel="shortcut icon" href="media/image/favicon.ico" />

<script src="js/jquery-3.2.1.min.js"></script>
<script src="ckbs.js"></script>

<script>

// $('#sx').click(function(){
// 	 alert("sss"),
// 	 history.go(-1)
// })

</script>


<style>
.imgdb {
	heigth: 150px;
	width: 120px;
}

#span {
	position: absolute;
	left: 35%;
	font-size: 50px;
	heigth:130px;
	top: 30px;
}

#bf {
	position: relative;
}

#img2 {
	position: absolute;
	right: 0
}
.portlet-body{
	margin-bottom: 20px;
}
</style>

<div class="row-fluid">

	<div class="span12">

		<!-- BEGIN PAGE TITLE & BREADCRUMB-->

		<h3 class="page-title">

			数据统计<small>详细战报</small>

		</h3>

		<ul class="breadcrumb">

			<li><i class="icon-home"></i> <a href="javascript:;"
				class='hdsy'>首页</a> <i class="icon-angle-right"></i></li>

			<li><a href="javascript:;" id='sx'>查看比赛</a> <i
				class="icon-angle-right"></i></li>

			<li><a href="javascript:;" id='xxsq'>详细赛情</a></li>

		</ul>

		<!-- END PAGE TITLE & BREADCRUMB-->

	</div>

</div>
<div class="row-fluid">
	<div class="span12">
		<div id='bf'>
			<div class='portlet-body'>

				<img src="media/image/${sessionScope.team1_mark}" class='imgdb' /><span id='span'><span>${sessionScope.team1_name}</span>
				    <span>&nbsp;${sessionScope.cr_score1}:${sessionScope.cr_score2}&nbsp;</span>
					<span>${sessionScope.team2_name}</span></span><img
					src="media/image/${sessionScope.team2_mark}" class='imgdb' id='img2' />

			</div>
		</div>
	</div>
</div>
<div class="row-fluid">

	<div class="span12">

		<!-- BEGIN EXAMPLE TABLE PORTLET-->

		<div class="portlet box red">

			<div class="portlet-title">

				<div class="caption">
					<i class="icon-edit"></i>${sessionScope.team1_name}</div>

				<div class="tools">

					<a href="javascript:;" class="collapse"></a> <a
						href="#portlet-config" data-toggle="modal" class="config"></a> <a
						href="javascript:;" class="reload"></a> <a href="javascript:;"
						class="remove"></a>

				</div>

			</div>

			<div class="portlet-body">

				<div class="clearfix">

					<div class="btn-group"></div>

					<div class="btn-group pull-right">

						<button class="btn dropdown-toggle" data-toggle="dropdown">
							Tools <i class="icon-angle-down"></i>

						</button>

						<ul class="dropdown-menu pull-right">

							<li><a href="#">Print</a></li>

							<li><a href="#">Save as PDF</a></li>

							<li><a href="#">Export to Excel</a></li>

						</ul>

					</div>

				</div>

				<table class="table table-striped table-hover table-bordered"
					id="sample_editable_1">

					<thead>

						<tr>

							<th>球员</th>

							<th>得分</th>

							<th>助攻</th>

							<th>抢断</th>

							<th>盖帽</th>

							<th>失误</th>

							<th>时间</th>

							<th>首发</th>

						</tr>

					</thead>

					<tbody id='tb'>

						<c:forEach items="${sessionScope.team1 }" var="team1">

							<tr>
								<td>${team1.player_name}</td>
								<td>${team1.pts_Record}</td>
								<td>${team1.asts_Record}</td>
								<td>${team1.spg_Record}</td>
								<td>${team1.bpg_Record}</td>
								<td>${team1.tos_Record}</td>
								<td>${team1.ds_date}</td>
								<td>
								<c:if test="${team1.starter==1}"><img alt="" src="media/image/start_favorite.png"></c:if>
								<c:if test="${team1.starter==0}"><img alt="" src="media/image/start_empty.png"></c:if>
								</td>
							</tr>
						</c:forEach>



					</tbody>

				</table>

			</div>

		</div>

		<!-- END EXAMPLE TABLE PORTLET-->

	</div>

</div>
<div class="row-fluid">

	<div class="span12">

		<!-- BEGIN EXAMPLE TABLE PORTLET-->

		<div class="portlet box blue">

			<div class="portlet-title">

				<div class="caption">
					<i class="icon-edit"></i>${sessionScope.team2_name}</div>

				<div class="tools">

					<a href="javascript:;" class="collapse"></a> <a
						href="#portlet-config" data-toggle="modal" class="config"></a> <a
						href="javascript:;" class="reload"></a> <a href="javascript:;"
						class="remove"></a>

				</div>

			</div>

			<div class="portlet-body">

				<div class="clearfix">

					<div class="btn-group"></div>

					<div class="btn-group pull-right">

						<button class="btn dropdown-toggle" data-toggle="dropdown">
							Tools <i class="icon-angle-down"></i>

						</button>

						<ul class="dropdown-menu pull-right">

							<li><a href="#">Print</a></li>

							<li><a href="#">Save as PDF</a></li>

							<li><a href="#">Export to Excel</a></li>

						</ul>

					</div>

				</div>

				<table class="table table-striped table-hover table-bordered"
					id="sample_editable_1">

					<thead>

						<tr>

							<th>球员</th>

							<th>得分</th>

							<th>助攻</th>

							<th>抢断</th>

							<th>盖帽</th>

							<th>失误</th>

							<th>时间</th>

							<th>首发</th>

						</tr>

					</thead>

					<tbody id='tb'>

						<c:forEach items="${sessionScope.team2 }" var="team2">

							<tr>
								
								<td>${team2.player_name}</td>
								<td>${team2.pts_Record}</td>
								<td>${team2.asts_Record}</td>
								<td>${team2.spg_Record}</td>
								<td>${team2.bpg_Record}</td>
								<td>${team2.tos_Record}</td>
								<td>${team2.ds_date}</td>
								<td>
								<c:if test="${team2.starter==1}"><img alt="" src="media/image/start_favorite.png"></c:if>
								<c:if test="${team2.starter==0}"><img alt="" src="media/image/start_empty.png"></c:if>
								</td>
						
							</tr>
						</c:forEach>
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

		placeholder : "Select an option",

		allowClear : true

	});
</script>