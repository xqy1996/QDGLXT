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
<script>
/**
 * 横向柱形图
 * 
 * @author 	纵横(lrenwang)
 * @email	lrenwang@qq.com
 * @blog	blog.lrenwang.com
 * @qq		3142442
 * @version 1.2
 * 兼容 IE7 FireFox
 */
var bar = function (id,title,data){
	//展示的id
	this.id = '';

	//标题
	this.title = '';

	//数据
	this.data = '';

	//宽
	this.width = 500;
	
	//背景图片位置
	this.bgimg = 'images/plan.gif';
	
	//动画速度
	this.speed = 1000;

	//投票总数
	var num_all = 0;
	this.show = function (){
		//添加一个table对象
		$("#"+this.id).append("<table width='"+this.width+"' cellpadding=0 cellspacing=6 border=0 style='font-size:12px;' ></table>")

		$("#"+this.id+" table").append("<tr><td colspan=3 align='center' ><span style='font:900 14px ;color:#444'>"+this.title+"</span></td></tr>")

		//计算总数
		$(this.data).each(function(i,n){
			num_all += parseInt(n[1]);
		})

		var that = this;

		//起始
		var s_img = [0,-52,-104,-156,-208];
		//中间点起始坐标
		var c_img = [-312,-339,-367,-395,-420];
		//结束
		var e_img = [-26,-78,-130,-182,-234];
		var that = this;
		var div;
		$(this.data).each(function(i,n){
			
			//计算比例
			var bili = (n[1]*100/num_all).toFixed(2);
			
			//计算图片长度, *0.96是为了给前后图片留空间
			var img = parseFloat(bili)*0.96;
	
			if(img>0)
			{
				div = "<div style='width:3px;height:16px;background:url("+that.bgimg+") 0px "+s_img[i]+"px ;float:left;'></div><div fag='"+img+"' style='width:0%;height:16px;background:url("+that.bgimg+") 0 "+c_img[i]+"px repeat-x ;float:left;'></div><div style='width:3px;height:16px;background:url("+that.bgimg+") 0px "+e_img[i]+"px ;float:left;'></div>";
			}
			else
			{
				div='';
			}
			$("#"+that.id+" table").append("<tr><td width='30%' align='right' >"+n[0]+"：</td><td width='60%' bgcolor='#fffae2' >"+div+"</td><td width='10%' nowrap ></td></tr>")
		})
		
		this.play();
	}

	this.play = function (){
		var that = this;		
		$("#"+this.id+" div").each(function(i,n){
			if($(n).attr('fag'))
			{
				$(n).animate( { width: $(n).attr('fag')+'%'}, that.speed )
			}
		})
	}
}
</script>

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

			<li><a  href="javascript:;" id='sx'>分析球员</a></li>

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

											<th>分析</th>

										</tr>

									</thead>

									<tbody id="tb">

										<tr id="tr">

										
											

							

										</tr>

										

									</tbody>

								</table>
<div id="envon" style=" width:300px; background-color:#FFFFFF; border:1px solid #000000; padding:20px; overflow:hidden; display:none;">  
                                            <a href="javascript:EV_closeAlert()">关闭</a>  
                                            
                                            </div>  
							</div>

						</div>

						<!-- END EXAMPLE TABLE PORTLET-->

					</div>

				</div>


  
  
   
    
    <script type="text/javascript">
    function init(){
    $.post(
    "getAllPlayer.do",
    function(data){
    
    $.each(data, function( index, ele) { 
    var a="<tr><td>"+ele.name+ "</td>"+
    "<td>"+ele.pts+ "</td>"+
   "<td>"+ele.rebs+ "</td>"+
   "<td>"+ele.asts+ "</td>"+
  "<td>"+countAb(ele)+ "</td>"+
  "<td>"+ele.position+"</td>"+
  "<td>"+"<input type='button' id='c' value='确定分析' onclick='getPower("+ele.id+");'>"+"</td>"+
  "</tr></br>";
   $('#tb').append(a);     }
     
     )
                   }


    );
    }
    init();
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
//计算球员能力
function getPower(a){

$.post("analysPlayer.do",
          {
          player_id: a,
          
          },
   function(a){
     $('#envon').html("<a href='javascript:EV_closeAlert()'>关闭</a>")
   EV_modeAlert("envon")
   var data = [];
data[0] = ['进攻能力',a.att];
data[1] = ['防守能力',a.deffen];
data[2] = ['组织能力',a.zuzhi];
data[3] = ['综合能力',a.ab1];



var title = '球员能力';
var bar1 = new bar();
bar1.id = 'envon';
bar1.title = title;
bar1.data = data;
bar1.show();
   
   
  
       
   });
}
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
