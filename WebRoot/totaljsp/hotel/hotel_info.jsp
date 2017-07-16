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
		<meta charset="utf-8" />
		<base href="<%=basePath%>">
		<title>酒店介绍</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/base1.css" />
	    <!-- 模态框 -->
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/style1.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/velocity.min.js"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
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
							<li class="active">酒店</li>
						</ol>
						<div class="news-list">
							<h4 class="content-title">酒店介绍 / <small>INTRODUCE</small></h4>
							<c:if test="${empty requestScope.hotel }">
				    		没有数据！！
			  				  </c:if>
			  				  <c:if test="${!empty requestScope.hotel }">
							<tbody>
								<c:forEach items="${requestScope.hotel }" var="str1">	
							<div class="row">
							<center><h3>${str1.h_name }</h3></center><br>
								<div class="col-lg-4 col-md-4 col-sm-4 news-pic">
									<img src="images/bg.jpg" alt="" class="img-responsive center-block" />
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									
									<p>	
											<a>${str1.h_info }</a>
									</p>
								<p>预约电话：${str1.h_phone} </p>
								</div>
							</div>
							</c:forEach>
							
							</tbody>
							</c:if>



							
							<!--分页-->
							<nav aria-label="Page navigation" class="page-box">
								<ul class="pagination">
									<li>
										<a href="#" aria-label="Previous">
											<span aria-hidden="true">首家</span>
										</a>
									</li>
									<li class="active">
										<a href="#">上一家</a>
									</li>
									<li>
										<a href="#">下一家</a>
									</li>
									<li>
										<a href="#" aria-label="Next">
											<span aria-hidden="true">尾家</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
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
		<script src="js/jquery-1.11.0.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</body>

</html>