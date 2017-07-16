<%@ page language="java" import="java.util.*,com.zjk.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head >
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>旅游网首页</title>
	<base href="<%=basePath%>">
	<link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<title>Home</title>
	<jsp:include page="header.jsp"></jsp:include>
	</head>
	<body>
		 <script>
				$("span.menu").click(function(){
					$(".top-nav ul").slideToggle("slow" , function(){
					});
				});
		 </script>
<div class="banner">
<script src="../../js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
<div class="slider">
		   <div class="container">
			  <ul class="rslides" id="slider">
				 <li>	          
					<div class="banner-info">
						<h2>景点介绍</h2>
						<p>领略山清水秀的张家口，看雄伟壮丽的鸡鸣山，看绿波荡漾的清水河，看历史悠久的黄帝城……</p>
					</div>
				 </li>
				  <li>	          
					<div class="banner-info">
						<h2>旅游攻略</h2>
						<p>是否为旅游的行程安排而担忧，旅游攻略提供了合适的时间安排，不管是一天两天三天……</p>
					</div>
				 </li>
				  <li>	          
					<div class="banner-info">
						<h2>住宿出行</h2>
						<p>住宿出行满足各人群的住宿需求，青年旅社，五星级酒店，快捷宾馆，民宿，应有尽有哦</p>
					</div>
				 </li>
				 <li>	          
					 <div class="banner-info">
						<h2>当地特产</h2>
						<p>特产是一个地方的代表，牛奶葡萄，莜面，柴沟堡熏肉，蔚县“八大碗”……好吃的在这里，还在等什么</p>
					</div>
				 </li>
				 <li>	          
					 <div class="banner-info">
						<h2>旅游圈子</h2>
						<p>为来这里旅游的人们提供一个共同交流的平台，看看别人的旅游日志，也发表一下自己的旅游感想</p>
					</div>
				 </li>
				 <li>	          
					 <div class="banner-info">
						<h2>最美冬奥</h2>
						<p>这里是冰的世界，雪的天地，这是自由翱翔的世界，激情和速度的视觉冲击，东奥直播，领略最美的站家口</p>
					</div>
				 </li>
			  </ul>
		  </div>
</div>
</div>	
<!--/header-->	
<div class="banner-bottom-strip">
	<div class="container">
		<h3>张家口旅游介绍</h3>
		<p>塞外青山楼外楼，京畿要塞咽中喉。说的正是河北张家口，这一片富饶而神奇的土地，462.3万张家口人在这片土地上繁衍生息。说她富饶是因为她土地广阔、面积大、海拔高、光照充足，昼夜温差大，动植物品质优良，无公害，营养丰富，矿产资源、地热资源丰富。神奇是因为她历史悠久，是草原游牧文化和农耕文化水乳交融的地方；她神奇在为历代兵家必争之地，是军事要塞，是北京的北大门；她神奇是美丽的天然风景区，在这里，风能、生态等资源极为丰富，有很大的开发潜力和美好的发展前景。这里有着十分便利的交通，还有许多名胜古迹和旅游景点，还有许许多多土特产品   这里有宽阔的马路，拔地而起的高楼大厦和许许多多的旅游胜地，有坝上草原度假村，有“塞外西湖”官厅水库，还有崇礼县“翠云山”滑雪场，长城关与大境门，有革命烈士陵园…… 张家口的交通也很发达，京张铁路，通过市区。大秦铁路横贯东西，有四通八达的公路和国道，还有新修建的丹拉、张石、张承高速公路，给我们带来了许多方便。 不仅有优化水资源，先进的风力发电，移动通讯联网世界和各地，有一流的教育，卫生和防疫等基础设施功能都很完备。再经过努力，张家口一定会成为一个中国闻名的古城。</p>
	</div>
</div>	
<link rel="stylesheet" href="css/swipebox.css"/>
	<script src="js/jquery.swipebox.min.js"></script> 
	    <script type="text/javascript">
			jQuery(function($) {
				$(".swipebox").swipebox();
			});
</script>
<!--works end here-->
<!--effect-gird-->
<div class="container">
<div class="grid">
	<h4>美景先看</h4>
					<figure class="effect-julia">
						<img src="images/index.jpg" alt="img21"/>
						<figcaption>
					    <h2><span>大境门</span></h2>
							<div>
								<p>大境门让张家界成了北方的“路陆商埠”</p>
							
							</div>
							
						</figcaption>			
	</figure>
					<figure class="effect-julia">
						<img src="images/w32.jpg" alt="img22"/>
						<figcaption>
					    <h2><span>张北草原</span></h2>
							<div>
								<p>中国66号公路</p>
								
							</div>
							
						</figcaption>			
	</figure>
					
					<figure class="effect-julia">
						<img src="images/jimingshan.jpg" alt="img21"/>
						<figcaption>
					    <h2> <span>鸡鸣山</span></h2>
							<div>
								<p>“飞来峰“之美称</p>
								
							</div>
							
						</figcaption>			
	</figure>
					<figure class="effect-julia">
						<img src="images/anjiagou.jpg" alt="img22"/>
						<figcaption>
					    <h2> <span>安家沟</span></h2>
							<div>
								<p>有“小桂林”的美名</p>
								
							</div>
						
						</figcaption>			
</figure>
										<figure class="effect-julia">
						<img src="images/tianehu.jpg" alt="img22"/>
						<figcaption>
					    <h2> <span>天鹅湖</span></h2>
							<div>
								<p>湖水加水鸟，落日余晖，美不胜收</p>	
							</div>
						
						</figcaption>			
</figure>
										<figure class="effect-julia">
						<img src="images/yuxian2.jpg" alt="img22"/>
						<figcaption>
					    <h2> <span>暖泉山庄</span></h2>
							<div>
								<p>暖泉古镇打树花</p>
								
							</div>
							
						</figcaption>			
	</figure>
					<div class="clearfix"> </div>
					</div>
</div>
<!--footer-starts-->
	<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</body>
</html>
