$(function(){
	  function ajaxload(local){
	      htmlobj=$.ajax({url:local,async:false});
	      $("#content").html(htmlobj.responseText);
	  }
	
	$("#sx").click(function(){
	
		ajaxload('czyh.html')
	})
	$(".hdsy").click(function(){
		
		ajaxload('zsjm.jsp')
	})
	
})
// JavaScript Document