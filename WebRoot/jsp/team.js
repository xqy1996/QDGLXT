$(function(){
	initGrid();
})
function initGrid(){
	//分页表格
	$('#gcdg').datagrid({
		toolbar: '#tb'
	});
	//加载数据
	$("#gcdg").datagrid({
		url:"getTeamById/"+1+".do",
	});
}
function modifyGcmc(id){
	//alert("修改："+id)
	//1.通过id查询数据
	$.post(
			"getById/"+ id+".do",
			{"team_id":id},
			function(data){
		//	alert(data.team_contents);
			//alert(data[1].team_name)
				//2.打开修改页面
				$('#gcmc_win').dialog({    
				    title: '修改工程',    
				    width: 400,    
				    height: 200,    
				    closed: false,    
				    cache: false,    
				    href: 'jsp/updateTeam.jsp',    
				    modal: true,
				    buttons:[{
						text:'修改',
						handler:function(){
							//3.点击修改，修改数据
							//ajax 修改用户信息
							$.post(
									"updateTeam.do",
									{
										id:$("#team_id").val(),
										name:$("#team_name").val(),
										address:$("#team_address").val(),
										contents:$("#team_contents").val(),
										password:$("#team_password").val()
									},
									function(data){
										//alert(data)
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
						$("#team_id").val(data.team_id);
						$("#team_name").val(data.team_name);
						$("#team_address").val(data.team_address);
						$("#team_contents").val(data.team_contents);
						$("#team_password").val(data.team_password);
						$("#team_funds").val(data.team_funds)
						
					}
				}); 
			}
	)
	
	
}
function options(value,row,index){
	
	str = "update.do?id="+row.id;
	return '<a href="javascript:modifyGcmc('+row.team_id+')">修改</a>';
	
}   