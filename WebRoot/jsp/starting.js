$(function(){
	init();
})
function init(){
	alert(23);
	$('#dg').datagrid({    
	    url:'getPlayerById.do',    
	    columns:[[ 
	    	{field:'ck',width:100,checkbox:true},
	    	{field:'id',title:'id',width:60},
	        {field:'name',title:'姓名',width:60},    
	        {field:'age',title:'年龄',width:100},    
	        {field:'rebs',title:'篮板球',width:120},    
	        {field:'height',title:'身高',width:100}, 
	        {field:'player_first',title:'首发',width:100},
	        {field:'operation',width:100,title:'是否为首发',formatter:options}
	    ]]  
	});  
}
function options(value,row,index){
	
	str = "update.do?id="+row.id;
	return '<a href="javascript:modifyGcmc('+row.player_id+')">修改</a>';
	
}   
function modifyGcmc(id){
	//alert("修改："+id)
	//1.通过id查询数据
	$.post(
			"getPlayerByPID.do",
			{"jplayer_id":id},
			function(data){
			//alert(data.player_name);
			//alert(data[1].team_name)
				//2.打开修改页面
				$('#gcmc_win').dialog({    
				    title: '修改工程',    
				    width: 400,    
				    height: 200,    
				    closed: false,    
				    cache: false,    
				    href: 'jsp/updateStarting.jsp',    
				    modal: true,
				    buttons:[{
						text:'修改',
						handler:function(){
							//3.点击修改，修改数据
							//ajax 修改用户信息
							$.post(
									"updatePlayerByPID.do",
									{
										jplayer_id:$("#player_id").val(),
										jplayer_first:$("#player_first").val(),
									},
									function(data){
										alert(data)
										if(data ==1){
											alert("修改成功！")
											$('#gcmc_win').window('close');
											$("#gcdg").datagrid("reload");
										}else{
											alert("修改失败！")
										}
									}
							);
							
							$('#gcmc_win').window('close');
							$("#gcdg").datagrid("reload");
						}
					},{
						text:'关闭',
						handler:function(){                                                                                                                                                                                                 
							$('#gcmc_win').window('close');
						}
					}],
				
					onLoad:function(){
						$("#player_id").val(data.player_id);
						$("#player_name").val(data.player_name);
						$("#player_age").val(data.player_age);
						$("#player_rebs").val(data.player_rebs);
						$("#player_first").val(data.player_first);	
						$("#player_height").val(data.player_height)
					}
				}); 
			}
	)
	
	
}
