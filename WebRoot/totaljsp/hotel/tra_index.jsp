<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>张家口出行</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/base1.css" />
		
	</head>

	<body>
	
<jsp:include flush="ture" page="../../header.jsp"></jsp:include>

			<!--新闻列表 -->
		<div class="news">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 hidden-xs sidebar">
						<!--电脑端页面导航-->
						<ul>
							<li class="sidebar-title">
								<h3>出行住宿</h3>
								<p>TRAVE&HOTEL</p>
							</li>
								<li class="sidebar-item">
								<a href="hotel/viewhotel"><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;酒店</a>
							
							</li>
							 <li class="sidebar-item">
								<a href="hotel/viewhotel?htyid=2"><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;民宿</a>
							</li>
							<li class="sidebar-item">
								<a href="hotel/viewTra"><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;出行</a>
							</li>
						</ul>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 right-content">
						
						<!--面包屑导航-->
						<ol class="breadcrumb bread">
							<li>
								<a href="hotel/viewhotel">出行住宿</a>
							</li>
							<li class="active">出行</li>
						</ol>
						<div class="news-list">
							<h4 class="content-title">交通方式 / <small>VEHICLE</small></h4>
							<c:if test="${empty requestScope.tras }">
				    		没有数据！！
			  				  </c:if>
			  				    <c:if test="${!empty requestScope.tras }">
							<tbody>
								<c:forEach items="${requestScope.tras }" var="str1">	
									
							<div class="row">
								
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3>${str1.tr_name }</h3>
									<p>
									${str1.tr_info}<br>
										地址：${str1.tr_address}<br>
										电话：${str1.tr_phone }
									</p>
								</div>
							</div>
								</c:forEach>
							
							</tbody>
							</c:if>		
						</div>
						
							<!-- <div class="news-list">
							<h4 class="content-title">城际交通 / <small> URBAN COMMUNICATIONS</small></h4>
							
							<div class="row">
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3>公交车</h3>
									<p>
										张家口市公交相对便捷，可以到达商业区和旅游景点，运行时间在6:00-20:00左右，时间班次以当地为准。
									</p>				
								</div>
							</div>
							
							<div class="row">	
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3>出租车</h3>
									<p>
									出租车起步2公里6元，超出部分根据车辆有不同的收费，有1.2、1.4、1.6元/公里三种价位，等待时间5分钟收1元，超过10公里则收2元/公里。市区内打表，出市区则有不打表的可能。具体收费则是：夏利和羚羊收1.2，威志v5是1.4元，奇瑞、斯柯达、威志排气量v6收费1.6元，价格以当地为准。
									</p>
								</div>
							</div>
							
							<div class="row">
								
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3>包车</h3>
									<p>
										如果想走草原天路又不方便自驾，则可选择包车，一般小车包车一天在400-500元左右。
									</p>		
								</div>
							</div>
						</div> -->
						
						
					</div>
				</div>
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
		<script src="../js/jquery-1.11.0.js"></script>
		<script src="../js/bootstrap.min.js"></script>

	</body>

</html>