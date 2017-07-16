<%@ page language="java" import="java.util.*,com.zjk.model.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Hotel_type> ho=(List<Hotel_type>)request.getAttribute("type");
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE>
<html>
<head>
<title>住宿出行</title>
<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>酒店</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/base1.css" />
		
	    <!-- 模态框 -->
	<link rel="stylesheet" href="css/reset.css"> 
	<link rel="stylesheet" href="css/style3.css"> 
	<script src="js/modernizr.js"></script> 
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
								<a href="hotel/viewTra""><span class="glyphicon glyphicon-play-circle"></span>&nbsp;&nbsp;出行</a>
							</li>
						</ul>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 right-content">
					
						<!--面包屑导航-->
						<ol class="breadcrumb bread">
							<li>
								<a href="hotel/viewhotel">出行住宿</a>
							</li>
							<li class="active"><%=ho.get(0).getHty_name() %></li>
						</ol>
						<div class="news-list">
							<h4 class="content-title">住宿/ <small><%=ho.get(0).getHty_name() %></small></h4>
							
							<c:if test="${empty requestScope.hotels }">
				    		没有数据！！
			  				  </c:if>
							<c:if test="${!empty requestScope.hotels }">
							<tbody>
								<c:forEach items="${requestScope.hotels }" var="str1">	
							
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4 news-pic">
									<img src="images/${str1.h_image}" alt="" class="img-responsive center-block" />
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 news-text">
									<h3><a href="hotel/viewHbyid/${str1.h_id} ">${str1.h_name }</a></h3>
									<p>
										<a href="hotel/viewHbyid/${str1.h_id}">
											${str1.h_info }
											</a>
									</p>
									
									<a href="hotel/viewHbyid/${str1.h_id}" class="readmore hidden-xs">阅读全文</a>	
									<div>
										<span><i class="glyphicon glyphicon-eye-open"></i>${str1.h_views }</span>
										<span class=""><i class="glyphicon glyphicon-heart"></i>	${str1.h_zan }</span>
										<span class="pull-right"><i class="glyphicon glyphicon-time"></i>${str1.h_ptime } </span>
									</div>
								</div>
							</div>
							</c:forEach>
							
							</tbody>
							</c:if>
							
							<!--分页-->
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
<!---->

		<script src="js/jquery-1.11.0.js"></script>
		<script src="js/bootstrap.min.js"></script>

	</body>

</html>