/**
 * @author a
 */
	
	var xWidth = screen.availWidth;  
	var xHeight = screen.availHeight;
	
	var beforeWidth = $(window).width();
	var browser_val = true;
	
	var elements = $('.title').find(".items");
	var elements_width;
	setFirstElementsWidth();
	
	$('.title').css('width' ,  $(window).width());
	$('.scroll-img').css('width' ,  $(window).width());
	
	
	
	
	
	
	function get_height()
	{
		var top_area_height = $(window).height();
		if (top_area_height < 780) {
			top_area_height = 780;
		};
		
		return top_area_height;
	}
	$('.top-area').css('height' ,  get_height());
	
	function setFirstElementsWidth()
	{
		var percent = $(window).width()/1920;
		elements_width = new Array(elements.length);
		for(var i=0;i<=elements.length;i++)
		{
			elements_width[i]=$(elements[i]).width();
			$(elements[i]).css("width",elements_width[i]*percent);
		}
	}
	
	function small_item()
	{
		var percent = $(window).width()/1920;
		for(var i = 0 ; i <= elements.length ; i ++ )
		{
			$(elements[i]).css("width" , elements_width[i]*percent);
		}
			
		if (browser_val == true) {
			adjust_gallery();
		};
		
		beforeWidth=$(window).width();
	}
	
	function adjust_gallery()
	{
		if($(window).width()>beforeWidth)
		{
			var move_speed = 0;
			var width_gap = $(window).width() - beforeWidth;
			console.log(move_speed);
			for(var i=1;i<get_title_cnt();i++)
			{
				move_speed+=width_gap;
			}
			$(".move-title").animate({
				left: "-="+move_speed+""
			}, 300);
			
		}
		else if($(window).width()<beforeWidth)
		{
			// && get_title_cnt()!=get_title_length() && get_title_cnt()!=1
			
			var move_speed = 0; 
			var width_gap = beforeWidth - $(window).width();
			for(var i=get_title_cnt();i>1;i--)
			{
				move_speed+=width_gap;
			}
			$(".move-title").animate({
				left: "+="+move_speed+""
			}, 300);
		}
	}

	$(window).resize(function() 
	{
		$('.title').css('width' ,  $(window).width());
		$('.scroll-img').css('width' ,  $(window).width());
		resize_event();
		menu_build();
	});
	
	var lock = false;
	function resize_event()
	{
		if(!lock)
		{
			lock=true;
			setTimeout(function()
			{
				small_item();
				
				lock=false;
			},250);
		}
	}
		
	function checkBrowser() 
	{
	    $.browser.chrome = $.browser.webkit && !!window.chrome;
	    $.browser.safari = $.browser.webkit && !window.chrome;
	         
	    if($.browser.chrome || $.browser.mozilla || $.browser.safari || $.browser.opera== true) {
	        small_item(true);              
	    }
	    else if($.browser.msie == true) {
	        userAgent = $.browser.version;
			userAgent = userAgent.substring(0,userAgent.indexOf('.'));        
			version = userAgent;
			if(version ==  6 && 7)
			{
				alert("당신의 브라우져는 IE" + version + "입니다. \n 본사이트는 IE9 이상 및 기타 브라우져에 최적화 되어있습니다.");
			}
			else if(version == 8 && 9 )
			{
				browser_val = false;
				resize_item();   
			}
			else if(version == 10){
				small_item(true);   
			}   
	    }
	} 
	
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	for (var word in mobileKeyWords){
	    if (navigator.userAgent.match(mobileKeyWords[word]) != null)
	    {
	        /*$(".title-box").hide();*/
	        break;
	    }
	}
		
	checkBrowser();
	
	function menu_build()
	{
		//if ($(window).width() > 1200) {$(".top-menu > ul > li > p").css({"font-size" : "14px"});}
		//else if ($(window).width() < 1200) {$(".top-menu > ul > li > p").css({"font-size" : "10px"});}
	} 
	
	
	function pages_check(val)
	{
		$('body,html').animate({scrollTop:val.top - 80},300);
	}
	
	$(".goto-01").click(function()
	{
		var val = $('body').offset();
		pages_check(val);
	});
	
	$(".goto-02").click(function()
	{
		var val = $('#cate-02').offset();
		pages_check(val);
	});
	
	$(".goto-03").click(function()
	{
		var val = $('#cate-03').offset();
		pages_check(val);
	});
	
	$(".goto-04").click(function()
	{
		var val = $('#cate-04').offset();
		pages_check(val);
	});
	
	$(".goto-05").click(function()
	{
		var val = $('#cate-05').offset();
		pages_check(val);
	});
	
	$(".goto-06").click(function()
	{
		var val = $('#cate-06').offset();
		pages_check(val);
	});
	
	$(".goto-07").click(function()
	{
		var val = $('#cate-07').offset();
		pages_check(val);
		
	});
	
	$(".banner-go01").click(function()
	{
		location.href = "http://pianohakwon.cafe24.com/";
	});	
	
	$(".banner-go02").click(function()
	{
		location.href = "http://www.catalook.co.kr/";
	});	
	
	$(".top-button").click(function()
	{
		var val = $("body").offset();
		$('body,html').animate({scrollTop:val.top},1000);
	});




	var trans_menu = false;
	$(window).scroll(function () 
	{ 
		var horizontalScroll = window.pageYOffset;
		
		var sector = $(".container").find(".sector");
		
		//new Seprate;
		
		
		
     	if (horizontalScroll > get_height() - 0 && trans_menu == false) 
     	{
 			trans_menu = true;
     		//$(".menu-containner").hide("blind",500);
     		$(".top-menu").css({"position" : "fixed",
     							"background-color" : "#FFFFFF" ,
     							"top" : "0px"});
     		$(".logo").animate({"top" : "5px"} , 200);
     		$(".top-menu > ul").animate({"top" : "20px"} , 200); 
     		$(".top-menu").animate({"height" : "65px"} , 500);
     		$(".menu-containner > ul").animate({"top" : "-0px"} , 400);
     		$(".top-bar").hide(500);
     		
     		//$(".menu-containner02").show("blind" , 500);
     		
     		//스크롤 이벤트 첨부
     		
     		return false;
     	}
     	else if(horizontalScroll < get_height() - 0 && trans_menu == true)
     	{
 			trans_menu = false;
     		//$(".menu-containner02").hide("blind" , 500);
	     	$(".top-menu").css({"position" : "relative",
     							"background-color" : "#FFFFFF"});
     		$(".logo").animate({"top" : "20px"} , 400);
     		$(".top-menu > ul").animate({"top" : "70px"} , 700); 
     		$(".top-menu").animate({"height" : "90px"} , 300);
     		$(".menu-containner > ul").animate({"top" : "10px"} , 400);
     		$(".top-bar").show(500);
     		
 			//$(".menu-containner").show("blind" , 500);
 			
 			//스크롤 이벤트 첨부
 			
     		return false;
     	}
		
	 	//(horizontalScroll > 500) == true ? $(".banner").fadeIn(700) : $(".banner").fadeOut(700);
		(horizontalScroll < 100) == true ? $(".top-button").fadeOut(400) : $(".top-button").fadeIn(400);

	});	

	$(".banner-close").click(function()
	{
		$(".banner").fadeOut(400);
	});
	
	
	/*
		hover effect
	*/
	
	var animate_val = false;
	
	$(".top-menu > ul > li").hover(function()
	{	
		if(animate_val == false){
			animate_val = true;
			$(this).children(".pointer").fadeIn(300);
			setTimeout(function(){animate_val = false;},100);
		}
	},
	function()
	{
		$(this).children(".pointer").fadeOut(300);
	});
	
	//
	
	var animate_val = false;
	var selected ;
	
	$(".pf-menu-li").hover(function()
	{	
		selected = this;
		if(animate_val == false){
			animate_val = true;
			$(this).animate({
				"background-color" : "#554ad7"
			} , 400);
			setTimeout(function(){animate_val = false;},50);
		}
	},
	function()
	{
		$(this).animate({
			"background-color" : "#222",
			opacity: 1
		} , 400);
		
	});
	
	
	$(".slide-li01").hover(function()
	{	
		
		selected = this;
		if(animate_val == false){
			animate_val = true;
			$(this).animate({
				"background-color" : "#554ad7"
			} , 400);
			setTimeout(function(){animate_val = false;},50);
		}
	},
	function()
	{
		$(this).animate({
						"background-color" : "#222",
						opacity: 1
					} , 400);
		
	});
	
	$(".slide-li02").hover(function()
	{	
		selected = this;
		if(animate_val == false){
			animate_val = true;
			$(this).animate({
				"background-color" : "#554ad7"
			} , 400);
			setTimeout(function(){animate_val = false;},50);
		}
	},
	function()
	{
		$(this).animate({
						"background-color" : "#222",
						opacity: 1
					} , 400);
		
	});
	
	
	
	var hover_idx = new Array(
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_01.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_02.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_03.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_04.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_05.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_06.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_07.png"
	);
	var hover_idx_after = new Array(
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_01.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_02.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_03.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_04.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_05.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_06.png",
		"/Hyuneum/resources/img/icon/icon_header01/icon_header_t_07.png"
	);
	
/*
 * 로컬용
	var hover_idx = new Array(
		"/hyuneum/resources/img/icon/icon_header01/icon_header_01.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_02.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_03.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_04.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_05.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_06.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_07.png"
	);
	var hover_idx_after = new Array(
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_01.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_02.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_03.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_04.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_05.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_06.png",
		"/hyuneum/resources/img/icon/icon_header01/icon_header_t_07.png"
	);*/
	
	var selected_menu = 0;
	var before_cnt = false;
	$(".main-menu-container > li").hover(function()
	{	
			var aim = $(this).index();
		if(animate_val == false && aim != selected_menu)
		{
			animate_val = true;
			$(this).animate({
				"background-color" : "#554ad7"
			} , 400);
			$(this).children().find("img").attr("src" ,""+hover_idx_after[aim]+"");
			$(this).find("p").css({
				"color" : "#fff"
			});
			setTimeout(function(){animate_val = false;},0);
		}
		/*  이미지 경로 난리남
			var aim = $(this).children().find("img").attr("src");
			var aim1 = aim.substring(0,34);
			var aim2 = aim.substring(34,41);
		*/
		
	},
	function()
	{
		var aim2 = $(this).index();
		if(aim2 != selected_menu)
		{
			$(this).animate({
							"background-color" : "#fff",
							opacity: 1
						} , 400);
			$(this).children().find("img").attr("src" , ""+hover_idx[aim2]+"");
			$(this).find("p").css({
					"color" : "#555"
			});
		}
	});
	
	$(".main-menu-container > li").bind("click" , function()
	{
		
		var aim = $(this).index();
		var before_num = $(".before-menu").index();
		selected_menu = aim;
		
		$(".main-menu-container > li").css({"background-color" : "#fff"	});
		$(".before-menu").children().find("img").attr("src" ,""+hover_idx[before_num]+"");
		$(".main-menu-container > li").find("p").css({	"color" : "#555"});
		$(".before-menu").removeClass("before-menu");
		
		$(this).css({"background-color" : "#554ad7"	});
		$(this).children().find("img").attr("src" ,""+hover_idx_after[aim]+"");
		$(this).find("p").css({	"color" : "#fff"});
		$(this).addClass("before-menu");
	});
	
	function Init_menu()
	{
		$(".before-menu").css({"background-color" : "#554ad7"	});
		$(".before-menu").children().find("img").attr("src" ,""+hover_idx_after[0]+"");
		$(".before-menu").find("p").css({	"color" : "#fff"});
		
	}
	Init_menu();
	
	
	
	
	
	var now_sector = 1;
	
	
	//obj-sector01
	
	
	
	
	//now_position > sector_num01 && now_position < sector_num02
	
	
	/*
	$(document).scroll(function()
		{
			var sector_num01 = $(".container").position();
			var sector_num02 = $(".obj-sector01").position();
			var sector_num03 = $(".obj-sector02").position();
			var sector_num04 = $(".obj-sector03").position();
			var sector_num05 = $(".obj-sector04").position();
			var sector_num06 = $(".obj-sector05").position();
			var sector_num07 = $(".obj-sector06").position();
			
			
			
			var now_position = $(window).scrollTop(); 
			console.log(now_position);
			//0<=x<=10
			if (0 <= now_position && now_position < sector_num01.top)
			{
				now_sector = 1;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num01.top <= now_position && now_position < sector_num02.top)
			{
				now_sector = 2;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num02.top <= now_position && now_position < sector_num03.top)
			{
				now_sector = 3;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num03.top <= now_position && now_position < sector_num04.top)
			{
				now_sector = 4;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num04.top <= now_position && now_position < sector_num05.top)
			{
				now_sector = 5;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num05.top <= now_position && now_position < sector_num06.top)
			{
				now_sector = 6;
				console.log("nowsector:" + now_sector);
			}
			else if(sector_num06.top <= now_position && now_position < sector_num07.top)
			{
				now_sector = 7;
				console.log("nowsector:" + now_sector);
			}
		});
		
		
		
	*/
	
	
	
	