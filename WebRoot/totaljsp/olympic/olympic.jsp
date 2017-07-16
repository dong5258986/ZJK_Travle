<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
   <!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <base href="<%=basePath%>">
<title>最美冬奥</title>
<link rel="icon" type="image/png" href="images/sitelogo.png" />
<link rel="stylesheet" type="text/css" href="css/olstyle.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/olcontent.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jbootstrap.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.cssAnimate.mini.js"></script>
<script type="text/javascript" src="js/jquery.touchwipe.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="js/jquery.themepunch.services.min.js"></script>
<link href='css/olcss.css' rel='stylesheet' type='text/css'>
<jsp:include page="../../header.jsp"></jsp:include>
<style>
/*
	用来对齐 "显示更多" 按钮的布局
*/
	#MTextAre{
		width:100%;
		height:120px;
	}
</style>
</head>
<body>
<div class="example-wrapper" style="margin-top:10px;">
	<div id="services-example-1" class="theme1">
		<ul>
			<!--
			#############
			-	SLIDE 1	-
			#############
			-->
			<li>
			<img class="thumb" src="images/services/service1.jpg" data-bw="images/services/service1_bw.jpg">
				<div style="margin-top:16px"></div>
					<div id="MTextAre">
						<h2>冰球</h2>
						<div><p>它是滑冰运动和曲棍球的结合体，就是运动员穿着冰鞋，拿着冰杆在冰上滑行击打球，进入球门，哪方进的球多，哪方就赢...</p></div>
					</div>
					<div id="buttomLocation"><a class="buttonlight morebutton" href="#">查看更多</a>
				</div>
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more"> <img class="big-image" width="45%" height="35%" src="images/services/ice-hockey.jpg">
					<h3 align="center">冰球介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>冰球(Ice Hockey )，亦称“冰上曲棍球”</p><br/>
						<p>&nbsp;&nbsp;&nbsp;冰球运动是多变的滑冰技艺和敏捷娴熟的曲棍球技艺相结合，对抗性较强的集体冰上运动  项目之一，也是冬季奥运会正式比赛项目。</p>
						<p>&nbsp;&nbsp;&nbsp;运动员穿着冰鞋，手拿冰杆滑行拚抢击球。球一般用硬橡胶制成，厚2,54厘米，直径7.62厘米，球重为156-170克。比赛时每队上场六人，前锋三人，后卫两人，守门员一人。运动员用冰杆将球击入对方球门，以多者为胜。</p>
					</div>
				
				</div>
			</li>
			<!--
			#############
			-	SLIDE 2	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service2.jpg" data-bw="images/services/service2_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre"><h2>自由式滑雪</h2>
				<p>运动员双脚穿着滑雪板立在雪上，手里拿着滑雪杖，在雪面上滑行，
				同时进行各种各样的技术动作，展示一些空中技巧，然后裁判给分...</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/free-skiing.jpg">
 					<h3 align="center">自由式滑雪介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>自由式滑雪（Free Skiing）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;自由式滑雪于1960年代在美国诞生，当时的美国正处于一个变革的时期，人们渴望自由的心理促使这项全新的刺激的滑雪项目出现在人们面前。</p>
						<p>&nbsp;&nbsp;&nbsp;此项目最初只是将高山滑雪和杂技集于一身，经过最近几十年的发展，变成了今天的样子。员用冰杆将球击入对方球门，以多者为胜。人。运动员用冰杆将球击</p>
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 3	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service3.jpg" data-bw="images/services/service3_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>花样滑冰</h2>
					<p>选手穿着冰刀鞋，以技术动作为基本，在场地上做出的滑冰表演，然后裁判打分，最后排名。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/figure-skating.jpg">
 					<h3 align="center">花样滑冰介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>花样滑冰（Figure Skating）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;花样滑冰是技巧与艺术性相结合的一个冰上运动项目。</p>
						<p>&nbsp;&nbsp;&nbsp;在音乐伴奏下，在冰面上滑出各种图案、表演各种技巧和舞蹈动作，裁判员根据动作评分，决定名次。</p>
						<p>&nbsp;&nbsp;&nbsp;国际滑冰联盟规定的比赛项目有单人花样滑冰、双人花样滑冰和冰上舞蹈 3个项目。</p>
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 4	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service4.jpg" data-bw="images/services/service4_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>短道速滑</h2>
					<p>就是在室内，起点、终点一定的距离下，参赛者都穿着冰刀鞋站在同一个起跑线上...</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/short-track.jpg">
 					<h3 align="center">短道速滑介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>短道速滑（Short Track Speed Skating）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;短道速滑是冬季奥运会项目，比赛场地的大小为30×60米，跑道每圈的长度为111.12米，短道速滑19世纪80年代起源于加拿大，当时加拿大的一些速度滑冰爱好者常到室内冰球场上练习，随之产生了室内速度滑冰的比赛，20世纪初，这项比赛亦逐渐在欧洲和美洲国家广泛开展。1992年被列为冬奥会比赛项目。</p>
						<p>&nbsp;&nbsp;&nbsp;短道速滑比赛采用淘汰制，以预、次、半决、决赛的比赛方式进行。4-8运动员在一条起跑线上同时起跑出发，站位通过抽签决定。比赛途中在不违犯规则的前提下运动员可以随时超越对手。 场地周长111.12米，直道宽不小于7米，弯道半径8米，直道长28.85米</p>
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 5	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service5.jpg" data-bw="images/services/service5_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>速度滑冰</h2>
					<p>主要就是比的速度，在一定的距离内，看谁速度最快到达终点...</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/speed-skating.jpg">
 					<h3 align="center">速度滑冰介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>速度滑冰（Speed Skating）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;速度滑冰，简称速滑，是滑冰运动中历史最为悠久，开展最为广泛的项目。1763年2月4日在英国首次举行15公里速度滑冰赛。</p>
						<p>&nbsp;&nbsp;&nbsp;1889年在荷兰的阿姆斯特丹首次举办世界冠军赛。比赛在周长400米的跑道上进行，选手按逆时针方向滑行。跑道由两条直线和两条180度的弧线连接而成，分内、外两道，道宽5米。内跑道的内圈半径为25米，外跑道的内圈半径为30米。</p>
						<p>&nbsp;&nbsp;&nbsp;所有比赛都是两名选手同时进行，选手按能力分组进行随机抽签，每组2人，同时滑跑，用时最少者获胜。每滑1圈交换1次内、外道。男、女速滑分别于1924年、1960年被列为冬奥会比赛项目。</p>
					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 6	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service6.jpg" data-bw="images/services/service6_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>高山滑雪</h2>
					<p>高山滑雪比赛要求高山海拔必须在1000米以上，运动员着滑雪板速度从高山上滑下来，
					在滑行过程中来回盘旋，将滑行速度与技巧达到完美的结合。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/alpine-skiing.jpg">
 					<h3 align="center">高山滑雪介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>高山滑雪（Alpine Skiing）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;高山滑雪，起源于阿尔卑斯山地域，又称“阿尔卑斯滑雪”或“山地滑雪”。。</p>
						<p>&nbsp;&nbsp;&nbsp;奥运会高山滑雪设10小项，男女各五项。男子项目设：滑降、回转、大回转、超级大回转、全能（滑降/回转）；女子项目设：滑降、回转、大回转、超级大回转、全能（滑降/回转）。</p>
						<p>&nbsp;&nbsp;&nbsp;该项运动将速度与技巧完美地结合在一起，运动员在滑行过程中左右盘旋，将健美与优雅融于一体，粗犷中不失儒雅，所以，一直深受广大观众的欢迎。</p>
					</div>

				</div>
			</li>
			<!--
			#############
			-	SLIDE 7	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service7.jpg" data-bw="images/services/service7_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>冰壶</h2>
					<p>冰壶是一种高智商和高雅的技巧类运动项目，也称掷冰壶，以最后哪个队的冰壶离圆心远近定胜负。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/urling.jpg">
 					<h3 align="center">冰壶介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>冰壶（Curling）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;冰壶(Curling)，又称掷冰壶、冰上溜石，是以队为单位在冰上进行的一种投掷性竞赛项目，冬奥会比赛项目，并设有冰壶世锦赛。设男女2个小项，每队为四人。</p>
						<p>&nbsp;&nbsp;&nbsp;冰壶为圆壶状，由不含云母的苏格兰天然花岗岩制成，且世界上所有的制造优质冰壶用的天然花岗岩均产自苏格兰近海的一个小岛，也只有苏格兰人掌握着制作世界顶尖水平冰壶的技术。</p>
						<p>&nbsp;&nbsp;&nbsp;冰壶周长约为91.44厘米，高(从壶的底部到顶部)11.43厘米，重量(包括壶柄和壶栓)最大为19.96公斤。刷冰是为了减小冰壶与冰面间摩擦。有人把冰壶称作"冰上国际象棋"，这一比喻很好地诠释了冰壶的神秘与高雅。</p>
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 8 -
			#############
			-->
			<li> <img class="thumb" src="images/services/service8.jpg" data-bw="images/services/service8_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>俯式冰橇</h2>
					<p>运动员俯卧在雪橇上，胸部挨着雪橇，在出发信号发出后，自己给雪橇一个初动力，然后迅速俯卧在雪橇上，
					冲上赛道，中途允许掉下来...</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/skeleton.jpg">
 					<h3 align="center">俯式冰橇介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>俯式冰橇（Skeleton）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;俯式冰橇又称为钢架雪车(skeleton)，是一项以雪橇为比赛工具的冬运动项目，它的最高速度可达至每小时130公里，在冬季奥运中设立男子和女子的个人赛事，直至现时，俯式冰橇于冬季奥运中曾四次列入正式的比赛项目:俯式冰橇项目曾于1928年瑞士圣莫里茨奥运会上进行过比赛，分为男、女各一项比赛。。</p>
						<p>&nbsp;&nbsp;&nbsp;直到20年之后，圣莫里茨再度举办冬奥会，又把钢架雪车列入比赛。可是钢架雪车项目因危险性较高，因此1948年冬奥会之后，又被取消，从此中断了冬奥会比赛项目的历史。直到2002年的盐湖城冬奥会，才又再度成为冬奥会的比赛项目。</p>
					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 9	-
			#############
			-->
			<li> <img class="thumb" src="images/services/service9.jpg" data-bw="images/services/service9_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>单板滑雪</h2>
					<p>运动员只用一个滑雪板，通过脚进行力量和方向的传递，在赛道上滑行、跨越障碍，做出技术动作的一种运动方式...</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/snowboarding.jpg">
 					<h3 align="center">单板滑雪介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>单板滑雪(Snowboarding)</p><br/>
						<p>&nbsp;&nbsp;&nbsp;单板滑雪(Snowboarding)(又称滑板滑雪)源于20世纪60年代中期的美国，其产生与冲浪运动有关。舍曼-波潘1965年把两个滑雪板绑在一起，偶然中就创造了两脚踩踏在一整块板上的新"滑雪板"，单板滑雪又称冬季的冲浪运动，单板滑雪选手用一个滑雪板而不是一双滑雪板，利用身体和双脚来控制方向。</p>
					</div>
			
				</div>
			</li>
			<!--
			#################
			-	SLIDE 10	-
			#################
			-->
			<li> <img class="thumb" src="images/services/service10.jpg" data-bw="images/services/service10_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">	
					<h2>有舵雪橇</h2>
					<p>运动员着专业的防护装置，出发信号发出后，选手推动雪车，然后飞进座位里面，前面选手掌握方向，后面选手控制制动装置。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/bobsleigh.jpg">
 					<h3 align="center">有舵雪橇介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>有舵雪橇（Bobsleigh）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;有舵雪橇，起源于瑞士。由无舵雪橇发展而来。有舵雪车第一届冬季奥运会中即被列为正式比赛项目。</p>
						<p>&nbsp;&nbsp;&nbsp;雪车用金属制成，形如小舟，车首覆有流线型罩，因此也得名"雪地之舟"。车底前部是一对舵板;上与方向盘相接，车底后部为一对固定平行滑板。车尾装有制动器。现今冬奥会比赛项目雪车是原来的有舵雪橇与平底雪橇(无舵雪橇)项目。</p>
						<p>&nbsp;&nbsp;&nbsp;原来的国际有舵雪橇与平底雪橇联合会，亦改称为国际雪车联合会。冬奥会设双人座和四人座(1924年列入)两个比赛项目，仅限男子参加。比赛时每队下滑4次，以4次比赛的总时间计算名次，时间少者为胜。</p>
					</div>
	
				</div>
			</li>
			<!-- 
			#################
			-	SLIDE 11	-
			#################
			-->
			<li> <img class="thumb" src="images/services/service11.jpg" data-bw="images/services/service11_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>无舵雪橇</h2>
					<p>运动仰面躺在雪橇上，脚在前，利用身体摆动控制雪橇的滑行，最后通过滑行的时间作为成绩的判定。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/luge.jpg">
 					<h3 align="center">无舵雪橇介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>无舵雪橇（Luge）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;无舵雪橇，也称平底雪橇、运动雪橇或短雪橇。雪橇运动项目之一。一种仰面躺在雪橇上，双脚在前，通过变换身体姿势来操纵雪橇高速回转滑降的运动。</p>
						<p>&nbsp;&nbsp;&nbsp;雪橇为木制，底面有一对平行的金属滑板。滑板不得装置能操纵滑板的舵和制动器。男、女单人项目比赛每队限报3人，每名运动员可滑行4次，以4次滑降时间总和计算名次，少者为胜。双人项目比赛时每队不得超过两名运动员，每名运动员可滑行两次，以两次滑降时间总和评定名次，少者列前。</p>
					</div>
		
				</div>
			</li>
			<!-- 
			#################
			-	SLIDE 12	-
			#################
			-->
			<li> <img class="thumb" src="images/services/service5.jpg" data-bw="images/services/service5_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>北欧两项</h2>
					<p>是越野滑雪和跳台滑雪的结合体，比赛第一天是进行跳台滑雪，
					把跳台滑雪的所得的分数转化为以秒计算的时间，根据时间的长短，决定第二天越野比赛的站位。</p>
				</div>	
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/noridc-combined.jpg">
 					<h3 align="center">北欧两项介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>北欧两项（ Nordic Combined）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;起源于北欧，由越野滑雪和跳台滑雪组成，在挪威、瑞典流传很长时间，成为北欧的传统项目，故又称北欧全能。1883年被列入霍尔门科伦滑雪大奖赛，20世纪初开始向世界推广。</p>
					</div>
	
				</div>
			</li>
			
			<!-- 
			#################
			-	SLIDE 13	-
			#################
			-->
			<li> <img class="thumb" src="images/services/service12.jpg" data-bw="images/services/service12_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>冬季两项</h2>
					<p>其实冬季两项是越野滑雪和射击的组合体，就是运动员脚穿滑雪板，手拿滑雪杖，后背背着一支射击抢。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/biathlon.jpg">
 					<h3 align="center">冬季两项介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>冬季两项（Biathlon）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;现代冬季两项，由越野滑雪和射击两种特点不同的相结合的竞赛项目结合在一起进行，要求运动员既要有由动转静的能力，又要有由静转动的能力。冬季两项也是冬奥会的正式项目之一。</p>
					</div>
	
				</div>
			</li>
			<!-- 
			#################
			-	SLIDE 14	-
			#################
			-->
			<li> <img class="thumb" src="images/services/service13.jpg" data-bw="images/services/service13_bw.jpg">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2> 雪车</h2>
					<p>是一种集体乘坐雪橇，利用舵和方向盘控制在人工冰道上滑行的运动。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/services/sleidge.jpg">
 					<h3 align="center">雪车介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>雪车（Sleidge）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;雪车，是一种集体乘坐雪橇，利用舵和方向盘控制在人工冰道上滑行的运动。1924年在第一届冬季奥运会中被列为正式比赛项目。</p>
						<p>&nbsp;&nbsp;&nbsp;雪车用金属制成，形如小舟，车首覆有流线型罩。车底前部是一对舵板；上与方向盘相接，车底后部为一对固定平行滑，车尾装有制动器。</p>
						<p>&nbsp;&nbsp;&nbsp;目前冬奥会比赛项目雪车（Bobsleigh and Tobogganing），即指原来的有舵雪橇（bobsleigh）与平底雪橇（Tobogganing）项目。原来的国际有舵雪橇与平底雪橇联合会（International Bobsleigh and Tobogganing Federation），现称为国际雪车联合会。另有中唐诗人刘叉《雪车》一诗。</p>
					</div>
				
				</div>
			</li>
		</ul>
		<!--
		#####################################
		-	TOOLBAR (LEFT/RIGHT) BUTTONS	-
		#####################################
		-->
		<div class="toolbar">
			<div class="left"></div>
			<div class="right"></div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-6 column mv">
				<video src="mv/1.mp4" controls="controls" class="mvl" width="105%" height="78%"></video>
				</div>
				<div class="col-md-6 column rec">
					
					<ul class="scrum">
				
						<li>
							<h3>冬奥为张家口的发展带来了什么</h3>
						</li>
						<li  >
							承办冬奥会，天时地利人和
						</li>
						<li >
							京晋冀蒙四省交界2019年京张铁路通车
						</li>
						<li >
							远离雾霾，2020年张家口优良天将超9成
						</li>
						<li >
							Nulla volutpat aliquam velit
						</li>
						<li>
							Faucibus porta lacus fringilla vel
						</li>
						<li>
							Aenean sit amet erat nunc
						</li>
						<li>
							Eget porttitor lorem
						</li>
					
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">
$(function() {
	$.noConflict();
	jQuery('#services-example-1').services(
		{
			width:920,
			height:290,
			slideAmount:5,
			slideSpacing:30,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:3000,
			hovereffect:"on",
			callBack:function() { }
		});
	jQuery('#services-example-2').services(
		{
			width:720,
			height:345,
			slideAmount:6,
			slideSpacing:20,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:3000,
			hovereffect:"on",
			callBack:function() { }
		});
});
</script>
<jsp:include page="../../footer.jsp"></jsp:include>

</body>
</html>
