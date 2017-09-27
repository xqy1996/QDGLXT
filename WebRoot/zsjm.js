$(function(){
	$.post("SelectPlayer.do",
			  {
			   
			  },
			  function(data){
				 $("#pie_chart_10").html(' ');
			    $.each(data,function(i,n){
			    	
			    	var str="<img class='qytp' src='"+n.imgUrl+"' /><span class='qyzs'>球员名称："+n.name+"</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class='qyzs'>球员身高："+n.height+"</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class='qyzs'>球龄："+n.playTime+"</span></br>"
			    	$("#pie_chart_10").append(str);
			    })
			  });
	$.post("Selectmatch.do",
			  {
			   
			  },
			  function(data){
				 $("#tb").html(' ');
				 
			    $.each(data,function(i,n){
			    	
			    	
			        var str1="<tr><td>"+n.name1+"</td><td>"+n.name2+"</td><td>"+n.cr_address+"</td><td>"+n.cr_time+"</td><td>"+n.cr_score1+"</td><td>"+n.cr_score2+"</td></tr>"
			    	$("#tb").append(str1);
			    })
			  });
	  function ajaxload(local){
	      htmlobj=$.ajax({url:local,async:false});
	      $("#content").html(htmlobj.responseText);
	  }
	  $(".hdsy").click(function(){
	 		
	 		ajaxload('zsjm.jsp')
	 	})
})// JavaScript Document