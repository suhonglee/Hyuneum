<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>HYUNUM</title>
		<meta name="viewport" content="width=device-width initial-scale=1.0">
    	<!-- Bootstrap -->
    	<link href="${CONTEXT }/resources/css/FrameWork/bootstrap.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/FrameWork/bootstrap-responsive.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/main.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/gallery.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/contents.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/style.css" rel="stylesheet" media="screen">
    	<link href="${CONTEXT }/resources/css/component.css" rel="stylesheet" type="text/css"/>
    	<style>
    		.greed{
				position: relative;
				width: 195px;
				float: left;
				border-radius: 5px 5px 5px 5px;
				margin: 2px; 
			}
			.item-list-wrapper{
				position: relative;
				top: 30px;
			}
			.text-box {
				position: relative;
				width: 195px;
				color: #000;
				float: left;
				font-size: 11px;
				line-height: 1.3em;
				overflow: hidden;
			}
			.items-container{
				padding-left: 30px;
				padding-right: 30px; 
			}
			#items > div{
				position: relative;
				overflow: hidden;
			}
			.items-top{
				width: 195px;
				height: 195px;
				background-color: #ccc;
				border-radius: 5px 5px 0px 0px;
			}
			.items-pointer{
				width: 50px;
				height: 50px;
				position:  relative;
				top: -250px;
				margin: 0px auto;
				z-index: 1000;
				background: url(${CONTEXT }/resources/img/icon/icon_03.png);
			}
			#body-mask{
				z-index: 9000;
				position: fixed;
				top: 0px;
				width: 100%;
				height: 100%;
				background-color: #000;
				filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');
				opacity: 0.7;
				display: none;
			}
			.popup-area{
				position: fixed;
				z-index: 9999;
				background-color: #fff;
				display: none;
				border: 2px solid #555;
				padding: 20px 20px 20px 20px;
				-moz-box-shadow: 4px 5px 5px #1f1f1f;
				-webkit-box-shadow: 4px 5px 5px #1f1f1f;
				box-shadow: 4px 5px 5px #1f1f1f;
				overflow-x: hidden;
			}
			.popup-content{
				position: absolute;
				float: left;
				bottom: -0px;
				width: 100%;
				left: -0px;
				height: 150px;
				margin: 0px auto;
				background-color: #ccc;
				display: none;
				opacity: 0.7;
			}
			.popup-content > div:first-child{
				position: relative;
				top: 10%;
				width: 90%;
				height: 80%;
				margin: 0px auto;
			}
			.popup_img{
				text-align: center;
				margin: 0px auto;
			}
			.popup-close-btn{
				position: relative;
				float: right;
				top: -15px;
				right: -15px;
				float: right;
				width: 30px;
				height: 30px;
				background-color: #f5f5f5;
			}
			.popup-close-btn > p{
				text-align: center;
				line-height: 30px;
				font-size: 20px;
				color: #777;
			}
			.popup-controll{
				position: absolute;
				top: 10px;
				right: 10px;
				float: right;
				width: 125px;
				height: 60px;
			}
			.popup-controll > div{
				float: left;
				width: 60px; 
				height: 60px;
				background-color: #fff;
				font-size: 60px;
				line-height: 60px;
				text-align: center;
				color: #aaa;
			}
			.popup-controll > div:hover{
				background-color: #efefef;
			}
			.popup-controll > div:last-child{
				margin-left: 5px;
			}
			.top-area{
				width: 100%;
				height: 1000px;
				background: url(${CONTEXT }/resources/img/main_back.jpg);
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-repeat: no-repeat;
				background-position: center left;
				background-attachment: fixed;
			}
			
			.top-wrapper{
				width: 1170px;
				height: 780px;
				margin: 0px auto;
			}
			.tws{
				width: 100%;
				height: 195px;
			}
			.tw-item{
				width: 195px;
				height: 195px;
				float: left;
			}
			.tw-item2{
				width: 585px;
				height: 195px;
				float: left;
			}
			.tw-item2 > h2{
				margin-top: 60px;
				margin-right: 60px;
				text-align: right;
				color: #fff;
				font-family: "Nanum Gothic", sans-serif;
				font-weight: 500;
				font-size: 35px;
			}
			.tw-back01{
				background-color: #7b74f6;
			}
			.tw-back02{
				background-color: #554ad7;
			}
			.tw-img{
				background-color: #fff;
			}
			.container{
				min-width: 1170px;
				
			}
			
    	</style>
    	
</head>
<body>
<div class="top-area">
			<div class="top-wrapper">
				<div class="tw-sector01 tws">
					<div class="tw-item tw-back01 goto-01"><img src="${CONTEXT }/resources/img/header/h_title01.png"/></div>
					<div class="tw-item"> </div>
					<div class="tw-item"> </div>
					<div class="tw-item"> </div>
					<div class="tw-item"> </div>
					<div class="tw-item"> </div>
				</div>
				<div class="tw-sector02 tws">
					<div class="tw-item"> </div>
					<div class="tw-item tw-back01 goto-02"><img src="${CONTEXT }/resources/img/header/h_title02.png"/></div>
					<div class="tw-item2"><h2>모두가 웃을 수 있는 공간을<br/>아름다운 공간을 디자인 합니다.</h2> </div>
					<div class="tw-item tw-img"><img src="${CONTEXT }/resources/img/header/h_title08.jpg"/></div>
				</div>
				<div class="tw-sector03 tws">
					<div class="tw-item tw-img"><img src="${CONTEXT }/resources/img/header/h_title09.jpg"/></div>
					<div class="tw-item tw-back02 goto-03"><img src="${CONTEXT }/resources/img/header/h_title03.png"/></div>
					<div class="tw-item tw-back01 goto-04"><img src="${CONTEXT }/resources/img/header/h_title04.png"/></div>
					<div class="tw-item tw-img"><img src="${CONTEXT }/resources/img/header/h_title10.jpg"/></div>
					<div class="tw-item tw-img"><img src="${CONTEXT }/resources/img/header/h_title11.jpg"/></div>
					<div class="tw-item tw-back02 goto-05"><img src="${CONTEXT }/resources/img/header/h_title05.png"/></div>
				</div>
				<div class="tw-sector04 tws"> 
					<div class="tw-item"> </div>
					<div class="tw-item "> </div>
					<div class="tw-item tw-back02 goto-06"><img src="${CONTEXT }/resources/img/header/h_title06.png"/> </div>
					<div class="tw-item tw-img"><img src="${CONTEXT }/resources/img/header/h_title12.jpg"/></div>
					<div class="tw-item tw-back01 goto-07"><img src="${CONTEXT }/resources/img/header/h_title07.png"/></div>
					<div class="tw-item"> </div>
				</div>
			</div>
			
			
		</div>
		<!-- 네비게이션 -->
		<div class="top-menu">
			<!-- menu 1 -->
			<div class="menu-containner" >
				<div class="top-bar"> </div>
				<div class="logo"> </div>
				<ul class="main-menu-container">
					<li value="1" class="goto-01 before-menu">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_01.png"/>
						</div>
						<p class="change-menu01 change-menu">HOME</p>
					</li>
					<li value="1" class="goto-02">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_02.png"/>
						</div>
						<p class="change-menu02 change-menu">회사소개</p>
					</li>
					<li value="1" class="goto-03">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_03.png"/>
						</div>
						<p class="change-menu03 change-menu">포트폴리오</p>
					</li>
					<li value="1" class="goto-04">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_04.png"/>
						</div>
						<p class="change-menu04 change-menu">초간편 견적의뢰</p>
					</li>
					<li value="1" class="goto-05">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_05.png"/>
						</div>
						<p class="change-menu05 change-menu">유의사항/학원법령</p>
					</li>
					<li value="1" class="goto-06">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_06.png"/>
						</div>
						<p class="change-menu06 change-menu">공사지원 및 서비스</p>
					</li>
					<li value="1" class="goto-07">
						<div class="icon-contain">
							<img src="${CONTEXT }/resources/img/icon/icon_header01/icon_header_07.png"/>
						</div>
						<p class="change-menu07 change-menu">공지사항 및 NEWS</p>
					</li>
				</ul>
			</div>
		</div>
		<!-- 갤러리 -->

		<div class="container">
			<!-- about -->
			<div class="sector01 sector" id="cate-02">
				<img src="${CONTEXT }/resources/img/title/t_01.png"/>
				<hr/>
			</div>
			<div class="row-fluid obj-sector01"> 
				<div class="span4 about">
				    <div class="item-hover">
				    	<center>
				    		<img src="${CONTEXT }/resources/img/icon/icon_01_1.png"/>
				    	</center>
				    </div>
				</div>
				<div class="span4 about">
				     <div class="item-hover">
				     	<center>
				    		<img src="${CONTEXT }/resources/img/icon/icon_02_1.png"/>
				    	</center>
				    </div>
				</div>
				<div class="span4 about">
				     <div class="item-hover">
				     	<center>
				    		<img src="${CONTEXT }/resources/img/icon/icon_03_1.png"/>
				    	</center>
				    </div>
				</div>
				<div class="span12" style="position: relative; left: -30px;">
				     	<center>
				    		<img src="${CONTEXT }/resources/img/content/intro/c_intro02.jpg"/>
				    	</center>
				</div>
			</div>
			<!--<hr/>-->
			<!-- sector:  -->
			<div class="sector02 sector"id="cate-03">
				<img src="${CONTEXT }/resources/img/title/t_02.png"/>
				<hr/>
			</div>
			<div class="row-fluid show-grid obj-sector02"> 
					<div class="span12">
					    <section id="options" class="clearfix">
						  <ul id="filters" class="option-set clearfix pf-menu" data-option-key="filter">
						  	<li><a>MENU</a></li>
						    <li class="pf-menu-li"><a href="#show-all" data-option-value="*" class="selected">Show All</a></li>
						    <li class="pf-menu-li"><a href="#red" data-option-value=".red">	음악학원	</a></li>
						    <li class="pf-menu-li"><a href="#blue" data-option-value=".blue">	미술학원	</a></li>
						    <li class="pf-menu-li"><a href="#green" data-option-value=".green">보습학원	</a></li>
						    <li class="pf-menu-li"><a href="#green" data-option-value=".red">	어학원 	</a>  </li>
						  	<li class="pf-menu-li"><a href="#green" data-option-value=".blue">	입시학원	</a></li>
						  	<li class="pf-menu-li"><a href="#green" data-option-value=".green">영어학원	</a></li>
						  	<li><a>Design for hyuneum</a></li>
						  	<li><img src="${CONTEXT }/resources/img/icon/icon_rg.png"/></li>
						  </ul>
						</section> <!-- #options -->
						
						<div class="item-list-wrapper" id="items" class="clearfix items-container">
							<div class="text-box blue">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_01.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_01t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test1"
								  	data-content="test1"
								  	data-no="1"/>
							</div>
							
							<div class="text-box red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_02.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_02t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test2"
								  	data-content="test2"
								  	data-no="2"/>
							</div>
							
							<div class="text-box green">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_03.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_03t.jpg" />
						    	<input class="pop-content-val" type="hidden"
						    		value="test3"
								  	data-content="test3"
								  	data-no="3"/>
							</div>
							
							<div class="text-box red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_04.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_04t.jpg" />
						    	<input class="pop-content-val" type="hidden"
						    		value="test4"
								  	data-content="test4"
								  	data-no="4"/>
							</div>
							
							<div class="text-box green">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_05.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_05t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test5"
								  	data-content="test5"
								  	data-no="5"/>
							</div>
							
							<div class="text-box blue">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_06.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_06t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test6"
								  	data-content="test6"
								  	data-no="6"/>
							</div>
							
							<div class="text-box red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_07.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_07t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test7"
								  	data-content="test7"
								  	data-no="7"/>
							</div>
							
							<div class="text-box #red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_08.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_08t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test8"
								  	data-content="test8"
								  	data-no="8"/>
							</div>
							
							<div class="text-box #red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_09.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_09t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test9"
								  	data-content="test9"
								  	data-no="9"/>
							</div>
							
							<div class="text-box #red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_10.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_10t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test10"
								  	data-content="test10"
								  	data-no="10"/>
							</div>
							
							<div class="text-box #red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_11.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_11t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test11"
								  	data-content="test11"
								  	data-no="11"/>
							</div>
							
							<div class="text-box #red">
								<div class="items-top">
									<img style="width: 195px; height: 195px;;" src="${CONTEXT }/resources/img/content/detail02/c_detail02_12.jpg"/> 
								</div>
								<div class="items-pointer"> </div>
								<input class="pop-img-val" type="hidden" 
								  	value="${CONTEXT }/resources/img/content/detail02/c_detail02_12t.jpg" />
						    	<input class="pop-content-val" type="hidden" 
						    		value="test12"
								  	data-content="test12"
								  	data-no="12"/>
							</div>
							
						</div>
				</div>
					
			</div>
			<!--<hr/>-->
			<!-- sector:  -->
			<div class="sector03 sector"id="cate-04">
				<img src="${CONTEXT }/resources/img/title/t_04.png"/>
				<hr/>
			</div>
			<div class="row show-grid obj-sector03">
					<div class="span3" >
						<div class="send-cost1 send-cost"> </div>
						
					</div>
					<div class="span3" >
						<div class="send-cost2 send-cost"> </div>
						
					</div>
					<div class="span3" >
						<div class="send-cost3 send-cost"> </div>
						
					</div>
					<div class="span3" >
						<div class="send-cost4 send-cost"> </div>
						
					</div>
					<div class="span6" >
						<center>
							<!--<img id="view_image" src="${CONTEXT }/resources/img/header/h_logo.png" />-->
							<img id="view_image" src="${CONTEXT }/resources/img/icon/c_image_01.jpg" />
						</center>
					</div>
					<div class="span6" >
						<div class="send-form">
							<form action="${CONTEXT }/bbs/" method="post"  onsubmit="return checkBbs()" enctype="multipart/form-data">
								<div class="param-pic">
									<div class="form-param">
										<h4>제목</h4><input type="text" name="title" id="title" placeholder="견적 요청합니다!"/>
										<h4>연락처</h4><input type="text" name="tel" id="tel" onkeypress="return isNumberKey(event)" placeholder="ex:XXX-XXXX-XXXX"/>
										<h4>내용</h4><textarea name="content" id="content" class="" > </textarea><br/>
										<input type="file" name="file" size="50" onchange="fileCheck(this);"/>
										<input type="submit" value="등록" class="send-submit"/>
										<input type="hidden" name="code" value="estimate"/>
									</div>
								</div>
							</form>
						</div>
					</div>
			</div>
			<div class="sector04 sector"id="cate-05">
				<img src="${CONTEXT }/resources/img/title/t_05.png"/>
				<hr/>
			</div>
			<div class="row show-grid obj-sector04"> 
				<div class="span12">
					<div id="contents04-tabs" class="slide-content02">
						<ul class="slide-content-menu02">
							<li ><a>MENU</a></li>
							<li class="slide-li01"><a href="#contents03-tabs-1"> 1 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-2"> 2 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-3"> 3 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-4"> 4 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-5"> 5 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-6"> 6 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-7"> 7 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-8"> 8 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-9"> 9 </a></li>
							<li class="slide-li01"><a href="#contents03-tabs-10">10</a></li>
							<li class="slide-li01"><a href="#contents03-tabs-11">11</a></li>
							<li class="slide-li01"><a href="#contents03-tabs-12">12</a></li>
							<li><a>Design for hyuneum</a></li>
						  	<li><img src="${CONTEXT }/resources/img/icon/icon_rg.png"/></li>
						</ul>
						<div id="contents03-tabs-1" class="contents03-tabs">
							<center>
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_02.png"  />
							</center>                                          
						</div>                                                 
						<div id="contents03-tabs-2" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_03.png"  />
							</center>                                          
						</div>                                                 
						<div id="contents03-tabs-3" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_04.png"  />
							</center>                                          
						</div>                                                 
						<div id="contents03-tabs-4" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_05.png"  />
							</center>                                          
						</div>                                                 
						<div id="contents03-tabs-5" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_06.png"  />
							</center>
						</div>
						<div id="contents03-tabs-6" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_07.png"  />
							</center>
						</div>
						<div id="contents03-tabs-7" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_08.png"  />
							</center>
						</div>
						<div id="contents03-tabs-8" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_09.png"  />
							</center>
						</div>
						<div id="contents03-tabs-9" class="contents03-tabs">   
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_10.png"  />
							</center>
						</div>
						<div id="contents03-tabs-10" class="contents03-tabs">  
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_11.png"  />
							</center>
						</div>
						<div id="contents03-tabs-11" class="contents03-tabs">  
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_12.png"  />
							</center>
						</div>
						<div id="contents03-tabs-12" class="contents03-tabs">  
							<center>                                           
							<img src="${CONTEXT }/resources/img/content/detail04/c_detail04_13.png"  />
							</center>
						</div>
					</div>
				</div>
			</div>
			<!--<hr/>-->
			<div class="sector05 sector"id="cate-06">
				<img src="${CONTEXT }/resources/img/title/t_06.png"/>
				<hr/>
			</div>
			<div class="row show-grid obj-sector05"> 
				<div class="span12">
					<div id="contents03-tabs" class="slide-content">
						<ul class="slide-content-menu">
							<li ><a>Service</a></li>
							<li class="slide-li02"><a href="#contents03-tabs-1">Service 1</a></li>
							<li class="slide-li02"><a href="#contents03-tabs-2">Service 2</a></li>
							<li class="slide-li02"><a href="#contents03-tabs-3">Service 3</a></li>
							<li class="slide-li02"><a href="#contents03-tabs-4">Service 4</a></li>
							<li class="slide-li02"><a href="#contents03-tabs-5">Service 5</a></li>
							<li><a>Design for hyuneum</a></li>
						  	<li><img src="${CONTEXT }/resources/img/icon/icon_rg.png"/></li>
						</ul>
						<div id="contents03-tabs-1" class="contents03-tabs">
							<center>
							<img src="${CONTEXT }/resources/img/content/detail03/c_detail03_01.png" />
							</center>                                         
						</div>                                                
						<div id="contents03-tabs-2" class="contents03-tabs">  
							<center>                                          
							<img src="${CONTEXT }/resources/img/content/detail03/c_detail03_02.png" />
							</center>                                         
						</div>                                                
						<div id="contents03-tabs-3" class="contents03-tabs">  
							<center>                                          
							<img src="${CONTEXT }/resources/img/content/detail03/c_detail03_03.png" />
							</center>                                         
						</div>                                                
						<div id="contents03-tabs-4" class="contents03-tabs">  
							<center>                                          
							<img src="${CONTEXT }/resources/img/content/detail03/c_detail03_04.png" />
							</center>                                         
						</div>                                                
						<div id="contents03-tabs-5" class="contents03-tabs">  
							<center>                                          
							<img src="${CONTEXT }/resources/img/content/detail03/c_detail03_05.png" />
							</center>
						</div>
					</div>
				</div>
			</div>
			<!--<hr/>	-->
			<div class="sector06 sector"id="cate-07">
				<img src="${CONTEXT }/resources/img/title/t_07.png"/>
				<hr/>
			</div>
			<div class="row show-grid obj-sector06"> 
				<div class="span12 " id="notice" >
					<h5>공지사항</h5>
				    
				</div>
			</div>
			<hr/>	
		</div>
		<div class="top-button">
			<img src="${CONTEXT }/resources/img/icon/icon_top.jpg"/>
		</div>
		<!--
				<div class="banner">
					<img class="banner-go01" src="img/banner/c_banner_01.jpg"/>
					<img class="banner-go02"src="img/banner/c_banner_02.jpg"/>
					<div class="banner-close">X</div>
				</div>
				-->
		<!-- END container -->
		<div class="footer">
			<center>
			<p class="footer-phrase">© 2013 현음 디자인. All rights resevered. 사업자 등록 번호 : 123-45-45678 <br/>
				 주소 : 서울특별시 강남구 역삼동 745-10 / TEL : 02.552.2719 / FAX : 02.552.3422 / E-mail : pianohakwon@hanmail.net </p>
			</center>
		</div>
		
		
		
		<div id="body-mask"> </div>
		<div class="popup-area">
			<div class="popup-close-btn"><p>X</p></div>
			<center>
				<img class="popup_img" src=""/>
			</center>
			<div class="popup-content">
				<div>
					<h4 class="popup-title-tag"> </h4>
					<h5 class="popup-content-tag"> </h5>
				</div>
				<div class="popup-controll">
					<div class="popup-img-left">&#60;</div>
					<div class="popup-img-right">&#62;</div>
				</div>
			</div>
		</div>


<div>
	<a href="${CONTEXT }/kco/">관리자페이지</a>
</div>
<div id="notice"></div>
</body>
<script src="${CONTEXT }/resources/js/FrameWork/jquery-1.8.3.min.js"></script>
<script src="${CONTEXT }/resources/js/FrameWork/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${CONTEXT }/resources/js/FrameWork/bootstrap.min.js"></script>
<script src="${CONTEXT }/resources/js/main.js"></script>
<script src="${CONTEXT }/resources/js/gallery.js"></script>
<script src="${CONTEXT }/resources/js/jquery.isotope.min.js"></script>
<script src="${CONTEXT }/resources/js/popup.js"></script>
<script>
	/* gallery Init	*/

	/** isotope	*/
	
	$(function()
	{
		var $container = $('#items');
		$container.isotope({ });
		var $optionSets = $('#options .option-set'),
		$optionLinks = $optionSets.find('a');
				
		$optionLinks.click(function()
		{
			var $this = $(this);
			if ( $this.hasClass('selected'))
				return false;
				
			var $optionSet = $this.parents('.option-set');
			$optionSet.find('.selected').removeClass('selected');
			$this.addClass('selected');
			  
			var options = {},
			
			key = $optionSet.attr('data-option-key'),
			value = $this.attr('data-option-value');
			value = value === 'false' ? false : value;
			options[ key ] = value;
			
			if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) 
				changeLayoutMode( $this, options );
			else
			$container.isotope( options );
				return false;
		});
	});
  $(".item-detail").click(function()
  {
  });
  
	
	$(function()
	{
		$( "#contents03-tabs" ).tabs({
		event: "mouseover"
		});
	});
	
	$(function()
	{
		$( "#contents04-tabs" ).tabs({
		event: "mouseover"
		});
	});
	
	
	
	var contents_animate_val = false;
	var contents_selected_menu = 0;
	
	$(".text-box").hover(function()
	{	
		var element = $(this).find(".items-top");
		var element03= $(this).find(".items-pointer");
		var element04= $(this).find(".items-bottom").children();
		
		if(contents_animate_val == false)
		{
			contents_animate_val = true;
			
			$(element).animate({
				"opacity":0.7,
				"background-color": "#000"
			} , 150);
			
			
			$(element03).animate({
				"top":  "-130px"
			} , 150);
			
			$(element04).animate({
				"color":  "#fff"
			} , 150);
			
			setTimeout(function(){contents_animate_val = false;},0);
		}
	},
	function()
	{
		var element = $(this).find(".items-top");
		var element03= $(this).find(".items-pointer");
		var element04= $(this).find(".items-bottom").children();
		
		$(element).animate({
			"opacity":1,
			"background-color": "#ccc"
		} , 150);
		$(element03).animate({
				"top":  "-250px"
			} , 150);
		$(element04).animate({
				"color":  "#777"
			} , 150);	
			
	});
	
	/*	샘플 메뉴   */
	
	var animate_val = false;
	var selected_menu = 0;
	
	$(".pf-menu-li").hover(function()
	{	
		var aim = $(this).index();
		
		if(animate_val == false && aim != selected_menu)
		{
			
			animate_val = true;
			$(this).animate({
				"background-color" : "#F86D18"
			} , 400);
			
			setTimeout(function()
			{
				animate_val = false;
			},50);
			
		}
	},
	function()
	{
		var aim2 = $(this).index();
		
		if(aim2 != selected_menu)
		{
			$(this).animate({
				"background-color" : "#222",
				opacity: 1
			} , 400);
		}
		
	});
	
	
	
	$(".pf-menu-a").click( function()
	{
		var aim = $(this).index();
		var before_num = $(".before-menu").index();
		selected_menu = aim;
		
		$(".pf-menu-a").css({"background-color" : "#222" });
		$(".pf-menu-a").find("p").css({ "color" : "#554ad7"});
		$(".before-menu").removeClass("before-menu");
		$(this).css({"background-color" : "#554ad7"	});
		$(this).addClass("before-menu");
	});
	
	
	function Init_menu()
	{
		$(".before-menu").css({"background-color" : "#554ad7" });
	}
	Init_menu();
	
	$(".tw-back01").hover(
		function()
		{
			$(this).animate({"background-color" : "#554ad7"});
		}
		,
		function()
		{
			$(this).animate({"background-color" : "#7b74f6"});
		}
	);
	$(".tw-back02").hover(
		function()
		{
			$(this).animate({"background-color" : "#7b74f6"});
		}
		,
		function()
		{
			$(this).animate({"background-color" : "#554ad7"});
		}
	);
	$(".tw-img").hover(
		function()
		{
			$(this).animate({"background-color" : "#000"});
		}
		,
		function()
		{
			$(this).animate({"background-color" : "#fff"});
		}
	);
	
	function isNumberKey(event)
	{
		var charCode = (event.which) ? event.which : event.keyCode;
		if(charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
		{
			return false;
		}
		return true;
	}
	function checkBbs()
	{
		if($("#title").val().length < 6)
		{
			alert('제목이 6자 이상이어야 합니다');
			return false;
		}
		else if($("#tel").val().length < 10)
		{
			alert('연락처가 잘못되었습니다')
			return false;
		}
		else if($("#content").val().length < 10)
		{
			alert('내용이 10자 이상이어야 합니다');
			return false;
		}
		if(confirm("견적상담을 신청하시겠습니까?"))
		{
			return true;
		}
		return false;
	}
	function fileCheck(file)
	{
		extensionArray = new Array(".jpg",".jpeg",".png",".bmp");
		fileName = file.value;
		fileExtension = fileName.substring(fileName.lastIndexOf('.'),fileName.length).toLowerCase();
		if(extensionArray.indexOf(fileExtension) < 0)
		{
			file.value="";
			$("#view_image").attr('src','${CONTEXT}/resources/img/header/h_logo.png');
			alert(fileExtension+' 파일은 첨부할 수 없습니다.');
		}
		else
		{
			readURL(file);
		}
	}
	
	function readURL(file)
	{
		var reader = new FileReader();
		reader.readAsDataURL(file.files[0]);
		reader.onload = function(e)
		{
			$('#view_image').attr('src',e.target.result);
		}
	}
$("#notice").load("${CONTEXT}/bbs/?code=notice");
</script>
</html>
