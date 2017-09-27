$(function(){

	ajaxload('zsjm.jsp')
	
	  function ajaxload(local){
	      htmlobj=$.ajax({url:local,async:false});
	      $("#content").html(htmlobj.responseText);
	  }
     $('#a_czqy').click(function(){
    	 
    	 ajaxload('signPlayer.jsp')
    	 return false;
     });
    $('#b_czqy').click(function(){
    	 
    	 ajaxload('analysPlayer.jsp')
    	 return false;
     });
    $('#c_czqy').click(function(){
   	 
   	 ajaxload('deletPlayer.jsp')
   	 return false;
    });
    $('#d_czqy').click(function(){
      	 
      	 ajaxload('team.jsp')
      	 return false;
       });
    $('#f_czqy').click(function(){
     	 
     	 ajaxload('starting.jsp')
     	 return false;
      });
    $('#e_czqy').click(function(){
      	 
      	 ajaxload('recommendPlayer.jsp')
      	 return false;
       });
    $('#g_czqy').click(function(){
     	 
     	 ajaxload('ckbs.jsp')
     	 return false;
      });
    
     $(".hdsy").click(function(){
 		
 		ajaxload('zsjm.jsp')
 	})
 	
	})// JavaScript Document