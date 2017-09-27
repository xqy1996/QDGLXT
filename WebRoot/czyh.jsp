
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
    
    <script src="czyh.js"></script>
    
   
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
										<input type='text'  />
										<input type='button' value='搜索'/>
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

									<tbody>

										<tr class="">

											<td>webriver</td>

											<td>Antonio Sanches</td>

											<td>462</td>

											<td>new user</td>
											
											<td>123</td>
											
                                            <td>

										      <select>
                                                 <option value ="volvo">首前锋</option>
                                                 <option value ="volvo">大前锋</option>
                                                 <option value ="saab">中锋</option>
                                                 <option value="opel">控球后卫</option>
                                                 <option value="audi">得分后卫</option>
                                              </select>
										
                                              
                                              
                                            </td>
											<td><a class="edit" href="javascript:;">签约</a></td>

							

										</tr>

										

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
