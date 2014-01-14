/**
 * @author a
 */
		/* title - slide */
		
		
		var title_cnt = 1;
		var title_length = $(".move-title").find(".title").length;
		
		var move_flag = false;
		var current_value = 0;http://127.0.0.1:8020/hyunum/img/main-gal/g_02.png
		
		function get_title_cnt()
		{http://127.0.0.1:8020/hyunum/img/main-gal/g_02.png
			return title_cnt;
		};
		function get_title_length()
		{
			return title_length;
		}
		function move_title(type,move_speed)
		{	
			if (move_flag == false) 
			{
				move_flag = true;
				if(type == "left")
				{
					if (title_cnt < title_length) 
					{
						$(".move-title").animate({
							left: "-="+move_speed+"",
							opacity: 0.5
						}, 1000);
						$(".move-title").animate({
							opacity: 1
						}, 1000);
						
						remove_motion(title_cnt);
						title_cnt++;http://127.0.0.1:8020/hyunum/img/main-gal/g_01.png
						item_motion(title_cnt);http://127.0.0.1:8020/hyunum/img/icon/icon_left.png
						setTimeout(function()
						{
							move_flag = false;
						} , 2000);
							
					}
					else if( title_cnt == title_length )
					{
						$(".move-title").animate({
							left: "+="+ move_speed * (title_length - 1) +"",
							opacity: 0.5
						}, 1000);
						$(".move-title").animate({
							opacity: 1
						}, 1000);
						
						remove_motion(title_cnt);
						title_cnt = 1;
						item_motion(title_cnt);
						setTimeout(function()
						{
							move_flag = false;
						} , 2000);
								
					}
				}
				else if(type == "right")
				{
					if (title_cnt > 1) 
					{
						$(".move-title").animate({
							left: "+="+move_speed+"",
							opacity: 0.5
						}, 1000);
						
						$(".move-title").animate({
							opacity: 1
						}, 1000);
						
						remove_motion(title_cnt);
						title_cnt--;
						item_motion(title_cnt);
						setTimeout(function()
						{
							move_flag = false;
						} , 2000);
							
					}
					else if(title_cnt == 1  )
					{
						$(".move-title").animate({
							left: "-="+ move_speed * (title_length - 1) +"",
							opacity: 0.5
						}, 1000);
						$(".move-title").animate({
							opacity: 1
						}, 1000);
						
						remove_motion(title_cnt);
						title_cnt = title_length;
						item_motion(title_cnt);
						setTimeout(function()
						{
							move_flag = false;
						} , 2000);
					}
				}
			}
		}

		function item_motion(title_cnt)
		{
			
			if (title_cnt == 1)
			{	
				$(".item1").animate({
					"top": "36%" ,
					"left": "57%",
					opacity: 1
				}, 4000);
				$(".item2").animate({
					"top": "20%" ,
					"left": "20%"
				}, 2000);
				$(".item3").animate({
					"top": "35%",
					"left": "20%"
				}, 1500);
			}
			else if (title_cnt == 2) 
			{
				
				$(".item4").animate({
					"top": "20%",
					"left": "25%"
				}, 2000);
				$(".item5").animate({
					"top": "30%",
					"left": "25%"
				}, 1500);
				$(".item6").animate({
					"top": "40%",
					"left": "25%"
				}, 1000);
				$(".item7").show("scale" , 2000);
				$(".item8").animate({
					"top": "52%"
				}, 3000);

			}
			else if (title_cnt == 3) 
			{	
				$(".item9").animate({
					"left": "60%",
					"top": "37%"
				}, 2000);
				$(".item10").animate({
					"left": "60%",
					"top": "55%"
				}, 2000);
				setTimeout(function(){
					$(".item11").show("scale" , 1000);
					$(".item12").show("scale" , 1000);
				},1000);
			}
		}
		
		function remove_motion(title_cnt)
		{
			if (title_cnt == 1)
			{	
				
				$(".item1").animate({
					"top": "36%" ,
					"left": "57%",
					opacity: 0
				}, 4000);
				$(".item2").animate({
					"top": "20%" ,
					"left": "75%"
				}, 2000);
				$(".item3").animate({
					"top": "35%",
					"left": "0%"
				}, 1500);
					
			}
			else if (title_cnt == 2) 
			{
				$(".item4").animate({
					"top": "20%",
					"left": "0%"
				}, 2000);
				$(".item5").animate({
					"top": "30%",
					"left": "0%"
				}, 1500);
				$(".item6").animate({
					"top": "40%",
					"left": "0%"
				}, 1000);
				$(".item7").hide("scale" , 2000);
				$(".item8").animate({
					"top": "100%"
				}, 3000);
			}
			else if (title_cnt == 3) 
			{	
				$(".item9").animate({
					"left": "0%",
					"top": "37%"
				}, 2000);
				$(".item10").animate({
					"left": "79%",
					"top": "55%"
				}, 1500);
				$(".item11").hide("scale" , 2000);
				$(".item12").hide("scale" , 2000);
			}
		}
		
		$(".right-title").click(function()
		{
			move_title(type = "right", $(window).width());
		});
		
		$(".left-title").click(function()
		{
			move_title(type = "left", $(window).width());
		});
		
		
		item_motion(title_cnt = 1);
	
		/*
		setInterval(function()
				{
					move_title(type = "left", $(window).width());
				} , 10000);*/
		
		
		
