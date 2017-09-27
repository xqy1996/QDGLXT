$(function() {

	$('#ss').click(
			function() {

				$.post("getSchedules.do", {
					tiaojian : $('#xlk').val(),
					text : $('#text').val(),
					status : $('#bszt').val()
				}, function(data) {

					$("#tb").empty()
					$.each(data, function(i, n) {
						var str1 = null;
						if (n.cr_status == 1) {
							str1 = "<input type='button' cr_id=" + n.cr_id
									+ " cr_team1=" + n.cr_team1 + " cr_score1="
									+ n.cr_score1 + " cr_team2=" + n.cr_team2
									+ " cr_score2=" + n.cr_score2
									+ " team1_mark=" + n.team1_mark
									+ " team2_mark=" + n.team2_mark
									+ " team1_name=" + n.team1_name
									+ " team2_name=" + n.team2_name
									+ " value='比赛详情' class='xq'/>"

						} else {
							str1 = "<input type='button' cr_id=" + n.cr_id
									+ " cr_team1=" + n.cr_team1 + " cr_score1="
									+ n.cr_score1 + " cr_team2=" + n.cr_team2
									+ " cr_score2=" + n.cr_score2
									+ " team1_mark=" + n.team1_mark
									+ " team2_mark=" + n.team2_mark
									+ " team1_name=" + n.team1_name
									+ " team2_name=" + n.team2_name
									+ " value='管理赛程' class='gl'/>"

						}
						var str = "<tr><td>" + n.cr_id + "</td><td>"
								+ n.cr_address + "</td><td>" + n.team1_name
								+ "</td><td>" + n.cr_score1 + "</td><td>"
								+ n.team2_name + "</td><td>" + n.cr_score2
								+ "</td><td>" + n.cr_time + "</td><td>" + str1
								+ "</td></tr>"

						$("#tb").append(str);

					})
					function ajaxload(local) {
						htmlobj = $.ajax({
							url : local,
							async : false
						});
						$("#content").html(htmlobj.responseText);
					}
					$(".xq").click(function() {

						var newTab = window.open('about:blank');
						$.post("getDetaileds.do", {
							cr_id : $(this).attr("cr_id"),
							cr_team1 : $(this).attr("cr_team1"),
							cr_team2 : $(this).attr("cr_team2"),
							cr_score1 : $(this).attr("cr_score1"),
							cr_score2 : $(this).attr("cr_score2"),
							team1_name : $(this).attr("team1_name"),
							team2_name : $(this).attr("team2_name"),
							team1_mark : $(this).attr("team1_mark"),
							team2_mark : $(this).attr("team2_mark")
						}, function(data) {
							newTab.location.href = "index2.jsp"
						})

					})

					$(".gl").click(function() {

						$.post("getDetaileds.do", {
							cr_id : $(this).attr("cr_id"),
							cr_team1 : $(this).attr("cr_team1"),
							cr_team2 : $(this).attr("cr_team2"),
							cr_score1 : $(this).attr("cr_score1"),
							cr_score2 : $(this).attr("cr_score2"),
							team1_name : $(this).attr("team1_name"),
							team2_name : $(this).attr("team2_name"),
							team1_mark : $(this).attr("team1_mark"),
							team2_mark : $(this).attr("team2_mark")
						}, function(data) {
							ajaxload('glbs.jsp')
						})

					})

					// $(function(){
					// $(".xq").click(function(){
					// var cr_id =$(this).attr("cr_id");
					// var cr_team1=$(this).attr("cr_team1");
					// var cr_team2=$(this).attr("cr_team2");
					// location.href="getDetaileds.do?"+"cr_id="+cr_id+"&cr_team1="+cr_team1+"&cr_team2="+cr_team1;
					//	                    		
					// })
					// })
				});
			})

	$('#ss').trigger("click");
})