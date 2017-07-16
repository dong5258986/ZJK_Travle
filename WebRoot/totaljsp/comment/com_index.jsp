<%@ page language="java" import="java.util.*,com.zjk.model.*" pageEncoding="UTF-8"%>

 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Posts> posts =( List<Posts>)request.getAttribute("posts");
List<Commnent> coms=(List<Commnent>)request.getAttribute("coms");
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!doctype html>

<html>
<head>
<link rel="stylesheet" href="css/comment.css"> <!-- CSS reset -->
<!-- 模态框 -->
	<meta charset="UTF-8">
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css"  >
	<link rel="stylesheet" href="css/reset.css"> 
	<link rel="stylesheet" href="css/style3.css"> 
	<link rel="stylesheet" href="css/liuyan.css" />
	<link rel="stylesheet" href="css/comment.css"> 
    <script src="js/liuyan.js"></script>
	<script src="js/modernizr.js"> </script>
	<script src="js/jquery-2.1.1.js"> </script>
	<script src="js/bootstrap.js"> </script>
	<script src="js/velocity.min.js"></script>
	<script src="js/main.js" ></script>
<!-- 导航栏 -->
<jsp:include flush="ture" page="../../header.jsp"></jsp:include>
</head>
<body>


<div class="box">
<div class="write"><a href="totaljsp/comment/tieba.jsp">发表游记</a></div>
<form>
        <h2>说出你的想法</h2>
        <div><textarea id="conBox" class="f-text"></textarea></div>
        <div class="tr">
                <span class="countTxt">还能输入</span><strong class="maxNum">140</strong><span>个字</span>
              <input id="sendBtn" type="button" value="" title="快捷键 Ctrl+Enter" />
        </div>
    </form>
<!-- 评论 -->
	<%
			if(null!=posts&&posts.size()>0){
				for(int i=0;i<posts.size();i++){
					Posts post1=posts.get(i);
				
				 %>
	<section class="cd-section">
			

	 <img src="images/<%=post1.getP_image() %>" alt="" style="float:left; clear:both;" width="15%" height="15%"/>
		<h4 style="float:left;"><%=post1.getP_title() %></h4><br>
		<p>
			&nbsp;&nbsp;&nbsp;&nbsp;
		<%=post1.getP_info() %>
		</p>
		<div class="cd-modal-action">
		<!-- 浏览图标 -->
		<div>
			<span><i class="glyphicon glyphicon-eye-open"></i> <%=post1.getP_views() %></span>
			<span class=""><i class="glyphicon glyphicon-heart"></i> <%= post1.getP_zan()%></span>
			<span class="pull-right"><i class="glyphicon glyphicon-time"></i><%= post1.getP_publishtime()%></span>
		</div>
			<a	class="btn" data-type="modal-trigger"  >查看详情</a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->
		
<!-- 模态框 -->
		<% 
			if(null!=coms&&coms.size()>0){
				for(int j=0;j<coms.size();j++){
					Commnent com1=coms.get(j);
					if(com1.getP_id()==post1.getP_id()){
						
				
		%>
		<div class="cd-modal">
			<div class="cd-modal-content">
				<span class="comment" id="ptitle">
		
				</span>
				
				<center><img  id="pimg"	src="images/<%=post1.getP_image() %>" /></center>
				<br>
				<span class="comment" id="pinfo">
			<%=post1.getP_info() %>
				</span>	
				<br>
				<!-- liuyan -->
	<div id="msgBox">
    <div class="list">
        <h3><span>精选留言</span></h3>
        <ul>
        
            <li>
                <div class="userPic"><img  id=""	src="img/face3.gif" /></div>
                <div class="content">
                    <div class="userName"><a href="javascript:;"><%=com1.getCom_member() %></a>:</div>
                    <div class="msgInfo" id="cinfo"><%=com1.getCom_info() %></div>
                    <div class="times"  	><span id="ctime"><%=com1.getComt_time() %></span></div>
                </div>
            </li>
        
        </ul>
    </div>	
</div>
							
			</div> <!-- cd-modal-content -->
		</div> <!-- cd-modal -->
	<%
		}
				}
				
			
			}else{
					%>
				<tr>
					<td>暂无信息...</td>
					
				</tr>
				
			<%
			}
			%>

		<a class="cd-modal-close">Close</a>
	</section> 
	<%
			}
			}else{
					%>
				<tr>
					<td>暂无信息...</td>
					
				</tr>
				
			<%
			}
			%>

</div>
	

<!--footer-starts-->
		<jsp:include page="../../footer.jsp"></jsp:include>
			<!---->
<script type="text/javascript">
		$(document).ready(function() {
			
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

	</body>
</html>
