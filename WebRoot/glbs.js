$(function() {
	$('.starter').click(function() {
		
		if ($(this).val() == 1) {
			$(this).find('img').attr('src', "media/image/start_empty.png");
			$(this).attr('value', 0);
		}else if ($(this).val() == 0) {
			$(this).find('img').attr('src', "media/image/start_favorite.png");
			$(this).attr('value', 1);
		}
	})
	
	
	$('.cancel').click(function(){
		$(this).closest('tr').hide();
	})
	
})