<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
    <base href="<%=basePath%>">
	    <title></title>
	    <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
		</script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link rel="icon" type="image/png" href="images/favicon.png">
        <link rel="icon" href="images/app-icon72x72@2x.png">
        <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet" type="text/css"/>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="WebRoot/css/common.css" />
		<div class="header" id="home">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./index.jsp"><p font-size="4px"> 张家口文化旅游</p></a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
						<div  class="collapse navbar-collapse">
							<ul class="nav navbar-nav navbar-left margin-top cl-effect-2">
								<li><a href="index.jsp"><span data-hover="首页">首页</span></a></li>
								<li><a href="attraction/viewatt"><span data-hover="景点介绍">景点介绍</span></a></li>
								<li><a href="strategy/viewStr"><span data-hover="攻略">攻略</span></a></li>
								<li><a href="hotel/viewhotel"><span data-hover="住宿出行">住宿出行</span></a></li>
								<li><a href="specialty/viewspec"><span data-hover="特产">特产</span></a></li>
								<li><a href="travel/viewpost"><span data-hover="旅游圈">旅游圈</span></a></li>
								<li><a href="totaljsp/olympic/olympic.jsp"><span data-hover="奥运">奥运</span></a></li>
							</ul>
							<div class="wei"  >
								<a href="totaljsp/manage/login.jsp" class="btn btn-info btn-xs" role="button"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;登录</a>	
								<style type="text/css">
									.wei{
										color:white;
										margin-top: 1%;
										text-align: right;		
										}
								</style>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
				</div><!-- /container-fluid -->
			</nav>
			<div class="header-banner"></div>
		</div>
	</head>
  	<body>
	</body>
</html>
