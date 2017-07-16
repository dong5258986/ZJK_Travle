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
<title>Home</title>
<base href="<%=basePath%>">

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
		<script src="js/jquery.min.js"> </script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="css/style.css" rel="stylesheet" type="text/css"/>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/common.css" />
			<link rel="stylesheet" href="css/default.css" />
		<link rel="stylesheet" type="text/css" href="css/component2.css" />
        <script src="js/jquery.chocolat.js"></script>
		
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
</head>
	<jsp:include page="../../header.jsp"></jsp:include>
	<body>
	
	<div class="gallery" id="gallery">
		<div class="container">
		<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
		<script type="text/javascript">
			$(function() {
			
				$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

			});
		</script>
		
<div class="container" >

	<div class="row clearfix">
			<div class="row">	
		<div class="col-md-12 column">
			<ul class="nav nav-pills">
				<li >
					 <a href="specialty/viewspec?st_id=1">热门推荐</a>
				</li>
				
				<li>
					 <a href="specialty/viewspec?st_id=2 ">食品特产</a>
				</li>
				
				<li >
					 <a href="specialty/viewspec?st_id=3">工艺品</a>
				</li>
			
			</ul>
		</div>
	</div> 
		
			<hr style="margin-top: 10px; height:1px;border:none;border-top:2px dotted ;">
			<div class="col-md-10 column" style="-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);border:#EDEFF0 solid;border-width:0px; background-color: #FFFFFF;">
				
					
		<c:if test="${empty requestScope.specs }">
    		没有数据！！
  		  </c:if>
		<c:if test="${!empty requestScope.specs }">
				<tbody>
				<c:forEach items="${requestScope.specs }" var="spec">
				<div class="col-md-4" style="margin-top:40px;">
					<div class="thumbnail">
						<img alt="300*240" src="images/${spec.s_image}" />
						<div class="caption">
							<h>
								${spec.s_name}
							</h>
							<p>
							${spec.s_info}
							</p>
							<p>
								 <button class="md-trigger" data-modal="modal-4">查看详情</button>
								 	<div class="md-modal md-effect-4" id="modal-4">
										<div class="md-content">
											<h3 style="color:black">莜面详情介绍</h3>
											<div><p>价格:</p><hr>
												<p>介绍：由于现在的面都是经过好几道工序加工的，不像原来卖的都是手工磨出来的，
												所以现在想要吃到劲道的莜面是要用开水和面的，先用筷子把开水和莜面搅成絮状，稍微晾一晾用手揉成团，
												面的软硬差不多和包包子差不多，不软也不硬的面团，
												然后就是用手掌手托的部位搓出条状的面条，或是用压面条的机器弄也行，不过还是手搓的口感最好吃。 </p>
												<button class="md-close">Close me!</button>
											</div>
										</div>
									</div>
								 <a class="btn" href="#">联系买家</a>
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
				</tbody>
				</c:if>
				
			</div>
			</div>
		</div>
		
		<center>
				当前第 ${pages.pageNow } 页
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
<!--script-->
	



<!--footer-starts-->
	<jsp:include page="../../footer.jsp"></jsp:include>

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
<!----> 
	</body>
	<script src="js/classie.js"></script>
	<script src="js/modalEffects.js"></script>
	<script>
		var polyfilter_scriptpath = '/js/';
	</script>
</html>
