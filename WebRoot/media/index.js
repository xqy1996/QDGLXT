$(function(){
     $('#a_czqy').click(function(){
		 $.post("czyh.html",{
	        contentType: "application/json; charset=utf-8",
	    
	       
	        success: function (message) {
	        	
	        	alert(1)
	        	
	        },
	        error: function (message) {
	           
	        }
	    });
		 })
	})// JavaScript Document