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

			<li><a  href="javascript:;" id='sx'>球员推荐</a></li>

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
                                       <label>您的对手：
										<input type="text" id="team_name" value="请输入对手球队的名字" onfocus="if(this.value==defaultValue){this.value='';}" onblur="if(!value){value=defaultValue}"> 
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

											<th>球队ID</th>

											<th>球队名</th>

											

										</tr>

									</thead>

									<tbody id="tb">

										<tr class="">

											<td id="a1">null</td>

											<td id="a2">0</td>
											
											<td><input type="button" id="c" value="为您推荐首发"></td>
                                            <div id="envon" style=" width:300px; background-color:#FFFFFF; border:1px solid #000000; padding:20px; overflow:hidden; display:none;">  
                                            <a href="javascript:EV_closeAlert()">关闭</a>  
                                            
                                            </div>  
							

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
   
         $.post("searchTeam.do",
          {
          team_name: $('#team_name').val() 
          },
   function(data){
 
 
   $('#a1').html("<td>"+data.team_id+ "</td>");
   $('#a2').html("<td>"+data.team_name+ "</td>");

  
       
   });
   
   })
   //点击推荐事件
   $('#c').click(function(){
   
        $.post("recommendPlayer.do",
          {
          
         cr_team1: $('#a1').text(),
         
          },
   function(data){
   $('#envon').html("<a href='javascript:EV_closeAlert()'>关闭</a>")
    $.each(data, function( index, ele) { 
  
   var b=index
   var a="第"+b+"选择"+"  球员id（"+ele.player.id+")   球员姓名 ("+ele.player.name+")</br>"
   
           
   $("#envon").append(a)
    })
EV_modeAlert("envon")

  
       
   });
   
  })
      
 
//计算球员价值
function countAb (data){
return parseInt(data.rebs)+   parseInt(data.asts)+parseInt(data.spg)+parseInt(data.bpg)-parseInt(data.tos)+parseInt(data.pts);

}

//
var EV_MsgBox_ID=" "; //重要  
  
//弹出对话窗口(msgID-要显示的div的id)  
function EV_modeAlert(msgID){  
    //创建大大的背景框  
    var bgObj=document.createElement("div");  
    bgObj.setAttribute('id','EV_bgModeAlertDiv');  
    document.body.appendChild(bgObj);  
    //背景框满窗口显示  
    EV_Show_bgDiv();  
    //把要显示的div居中显示  
    EV_MsgBox_ID=msgID;  
    EV_Show_msgDiv();  
}  
  
//关闭对话窗口  
function EV_closeAlert(){  
    var msgObj=document.getElementById(EV_MsgBox_ID);  
    var bgObj=document.getElementById("EV_bgModeAlertDiv");  
    msgObj.style.display="none";  
    document.body.removeChild(bgObj);  
    EV_MsgBox_ID="";  
}  
  
//窗口大小改变时更正显示大小和位置  
window.onresize=function(){  
    if (EV_MsgBox_ID.length>0){  
        EV_Show_bgDiv();  
        EV_Show_msgDiv();  
    }  
}  
  
//窗口滚动条拖动时更正显示大小和位置  
window.onscroll=function(){  
    if (EV_MsgBox_ID.length>0){  
        EV_Show_bgDiv();  
        EV_Show_msgDiv();  
    }  
}  
  
//把要显示的div居中显示  
function EV_Show_msgDiv(){  
    var msgObj   = document.getElementById(EV_MsgBox_ID);  
    msgObj.style.display  = "block";  
    var msgWidth = msgObj.scrollWidth;  
    var msgHeight= msgObj.scrollHeight;  
    var bgTop=EV_myScrollTop();  
    var bgLeft=EV_myScrollLeft();  
    var bgWidth=EV_myClientWidth();  
    var bgHeight=EV_myClientHeight();  
    var msgTop=bgTop+Math.round((bgHeight-msgHeight)/2);  
    var msgLeft=bgLeft+Math.round((bgWidth-msgWidth)/2);  
    msgObj.style.position = "absolute";  
    msgObj.style.top      = msgTop+"px";  
    msgObj.style.left     = msgLeft+"px";  
    msgObj.style.zIndex   = "10001";  
      
}  
//背景框满窗口显示  
function EV_Show_bgDiv(){  
    var bgObj=document.getElementById("EV_bgModeAlertDiv");  
    var bgWidth=EV_myClientWidth();  
    var bgHeight=EV_myClientHeight();  
    var bgTop=EV_myScrollTop();  
    var bgLeft=EV_myScrollLeft();  
    bgObj.style.position   = "absolute";  
    bgObj.style.top        = bgTop+"px";  
    bgObj.style.left       = bgLeft+"px";  
    bgObj.style.width      = bgWidth + "px";  
    bgObj.style.height     = bgHeight + "px";  
    bgObj.style.zIndex     = "10000";  
    bgObj.style.background = "#777";  
    bgObj.style.filter     = "progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=60,finishOpacity=60);";  
    bgObj.style.opacity    = "0.6";  
}  
//网页被卷去的上高度  
function EV_myScrollTop(){  
    var n=window.pageYOffset   
    || document.documentElement.scrollTop   
    || document.body.scrollTop || 0;  
    return n;  
}  
//网页被卷去的左宽度  
function EV_myScrollLeft(){  
    var n=window.pageXOffset   
    || document.documentElement.scrollLeft   
    || document.body.scrollLeft || 0;  
    return n;  
}  
//网页可见区域宽  
function EV_myClientWidth(){  
    var n=document.documentElement.clientWidth   
    || document.body.clientWidth || 0;  
    return n;  
}  
//网页可见区域高  
function EV_myClientHeight(){  
    var n=document.documentElement.clientHeight   
    || document.body.clientHeight || 0;  
    return n;  
}
    </script>

  </body>
</html>
