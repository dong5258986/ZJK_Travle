<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!doctype html>
<html>
<head>
<title>景点介绍</title>
<base href="<%=basePath%>">

	<link href="css/lunbo.css" rel="stylesheet"/>
	<link href='css/fangda.css' rel='stylesheet'>
	<script src='js/intense.js'></script>
	<script type="text/javascript" src="js/lunbo.js" ></script>
	<script>
		window.onload = function() {
		var elements = document.querySelectorAll( '.demo-image' );
		Intense( elements );
		}
	</script>
	<style>
		.container{
           margin-left:10%;
	   }
	</style>
	<jsp:include page="../../header.jsp"></jsp:include>
</head>
<body>							   
    <!--about-starts--> 
	<div class="about">
		<div class="container">
			<div class="about-top heading">
				<center><h4>张家口旅游景点众多，旅游资源丰富，来一起领略一下吧</h4></center>
					<p>张家口位于京晋冀蒙的交界处，即有塞外风光也有山峦风貌，还有历史传说和古迹老城。北魏和北齐的长城上有四大关口之一的大境门，逐鹿有黄帝建城的古迹，宣化有辽壁画墓，蔚县有元朝暖泉古镇，天漠影视公园内漫漫黄沙颇有大漠风情。而张北草原的无限风光更是吸引大量自驾游客，奔向草原天路，寻觅蜿蜒的闪电河。</p>				
				<div id="lun" style="width:80%;" >
					<ul>
						<li class="active" ><img style="height:450px;" src="./images/nuanquan.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/w32.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/tianehu.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/lunbo3.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/lunbo4.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/lunbo5.jpg" alt=""></li>
						<li><img style="height:450px;" src="images/lunbo8.jpg" alt=""></li>	
					</ul>
					<div id="num_list"   >
						<ul >
							<li><span class="active_num">1</span></li>
							<li><span>2</span></li>
							<li><span>3</span></li>
							<li><span>4</span></li>
							<li><span>5</span></li>
							<li><span>6</span></li>
							<li><span>7</span></li>
						</ul>
				</div>
	</div>
	<script type="text/javascript" src="js/lunbo.js" ></script>	
	
	<div id="map">
	<a href="totaljsp/about/about-map.jsp"><img alt="" src="images/map.png" /></a></div>
			<div class="about-bottom">
				<c:if test="${empty requestScope.atts }">
    			没有数据！！
  		 		 </c:if>
					<c:if test="${!empty requestScope.atts }">
					<tbody>
					<c:forEach items="${requestScope.atts }" var="att">
					<div class="col-md-4 about-left">
						<section class="demos">
							<div style="width:36.5%;height:250px; background-image: url('images/${att.a_picture}');"  data-image="images/${att.a_picture}" data-title="${att.a_infotitle} "  data-caption="${att.a_info}"></div>
						</section>
						<h5>${att.a_name }</h5>
						<p>${att.a_simpleinfo }</p>
					</div>
					</c:forEach>
					</tbody>
					</c:if>
					<div class="clearfix"> </div>
				</div>
			</div>
			
			<center>

	<nav aria-label="Page navigation" class="page-box">
							<ul class="pagination">
							<c:if test="${pages.hasPrev }">
									<li>
										<a href="attraction/viewAtts?pageNow=1" aria-label="Previous">
											<span aria-hidden="true">首页</span>
										</a>
									</li>
									<li class="active">
										<a href="attraction/viewAtts?pageNow=${pages.prevPage  }">上一页</a>
									</li>
									</c:if>
									<c:if test="${pages.hasNext }">
							<li class="active">
										<a href="attraction/viewAtts?pageNow=${pages.prevPage  }">下一页</a>
									</li>
									<li>
										<a href="attraction/viewAtts?pageNow=${pages.totalPageNumber}" aria-label="Next">
											<span aria-hidden="true">尾页</span>
										</a>
										
									</li></c:if>
								转到 <input type="text" size="1" id="pageNow"/> 页
						</ul>
							</nav>
							
						</center>
		</div>
	</div>
					
			
<!--footer-starts-->
		<jsp:include page="../../footer.jsp"></jsp:include>
			
<script type="text/javascript">
		$(document).ready(function() {
			
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
	</body>
</html>
