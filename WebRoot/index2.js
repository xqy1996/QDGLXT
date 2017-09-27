$(function(){
  
	
	
	
	ajaxload('xxbs.jsp')
	
	  function ajaxload(local){
	      htmlobj=$.ajax({url:local,async:false});
	      $("#content").html(htmlobj.responseText);
	  }
     $('#a_czqy').click(function(){
    	 
    	 ajaxload('czyh.html')
    	 
     });
     $(".hdsy").click(function(){
 		
 		ajaxload('zsjm.jsp')
 	})
 	  $("#ckbs").click(function(){
 		
 		ajaxload('ckbs.jsp')
 	})
	})// JavaScript Document