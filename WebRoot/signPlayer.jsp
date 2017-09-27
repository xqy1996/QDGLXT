<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();//项目名称
	//  http://localhost:8080/SCZSGL/
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getLocalPort()+path +"/";
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
    
  

<!DOCTYPE html>
<html>
<head>
<base href="<%= basepath%>">

		<meta charset="utf-8" />

	<title>Metronic | Visual Charts</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->



	<!-- END GLOBAL MANDATORY STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />
    
    <script src="js/jquery-3.2.1.min.js"></script>
    
   
 
</head>

  
  <body>

   <div class="row-fluid">

	<div class="span12">

		<!-- BEGIN PAGE TITLE & BREADCRUMB-->

		<h3 class="page-title">

			查找球员 <small>查找球员</small>

		</h3>

		<ul class="breadcrumb">

			<li>

				<i class="icon-home"></i>

				<a  href="javascript:;" class='hdsy'>首页</a> 

				<i class="icon-angle-right"></i>

			</li>

			<li><a  href="javascript:;" id='sx'>查找球员</a></li>

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

								<div class="caption"><i class="icon-edit"></i>球员列表</div>

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
                                       <label>查找球员：
										<input type='text' id="player_name" />
										<input type='button' value='搜索' id="b"/>
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

											<th>姓名</th>

											<th>得分</th>

											<th>篮板</th>

											<th>助攻</th>

											<th>球员价值</th>
											
											<th>球员位置</th>

											<th>签约</th>

										</tr>

									</thead>

									<tbody id="tb">

										<tr class="">

											<td id="a1">null</td>

											<td id="a2">0</td>

											<td id="a3">0</td>

											<td id="a4">0</td>
											
											<td id="a5">0</td>
											
                                            <td>

										      <select id="position">
                                                 <option value ="控球后卫">控球后卫</option>
                                                 <option value ="得分后卫">得分后卫</option>
                                                 <option value ="小前锋">小前锋</option>
                                                 <option value="大前锋">大前锋</option>
                                                 <option value="中锋">中锋</option>
                                              </select>
										
                                              
                                              
                                            </td>
											<td><input type="button" id="c" value="确定签约"></td>

							

										</tr>

										

									</tbody>

								</table>

							</div>

						</div>

						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>


  
  
   
    
    <script type="text/javascript">
     //点击寻找的事件
 $('#b').click(function(){
 
         $.post("searchPlayer.do",
          {
          player_name: $('#player_name').val() 
          },
   function(data){
   $('#a1').html("<td>"+data.name+ "</td>");
   $('#a2').html("<td>"+data.pts+ "</td>");
   $('#a3').html("<td>"+data.rebs+ "</td>");
   $('#a4').html("<td>"+data.asts+ "</td>");
   $('#a5').html("<td>"+countAb(data)+ "</td>");

  
       
   });
   
   })
   //点击确定签约事件
   $('#c').click(function(){
   
         $.post("addPlayer.do",
          {
          player_name: $('#player_name').val(),
          position: $('#position').val()
          },
   function(data){
   
    alert("签约成功")
  
       
   });
   
   })
      
 
//计算球员价值
function countAb (data){
return parseInt(data.rebs)+   parseInt(data.asts)+parseInt(data.spg)+parseInt(data.bpg)-parseInt(data.tos)+parseInt(data.pts);

}
    </script>

  </body>
</html>
