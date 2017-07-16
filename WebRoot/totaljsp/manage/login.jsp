<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  	<base href="<%=basePath%>">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>登录管理</title>
  <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="icon" href="images/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="css/amazeui.min.css" />
  <link rel="stylesheet" href="css/admin.css">
  <link rel="stylesheet" href="css/app.css">
</head>

<body data-type="login">

  <div class="am-g myapp-login">
	<div class="myapp-login-logo-block  tpl-login-max">
		<div class="myapp-login-logo-text">
			<div class="myapp-login-logo-text">
				旅游网<span> Login</span> <i class="am-icon-skyatlas"></i>				
			</div>
		</div>
	<div class="login-font">
			<i><a href="totaljsp/manage/login.jsp">登录</a> </i> or <span><a href="totaljsp/manage/sign.jsp">注册</a></span>
		</div>
		
		<div class="am-u-sm-10 login-am-center">
			<form class="am-form"  action="login/userlogin" method="post">
				<fieldset>
					<div class="am-form-group">
						<input type="text" name="username"  maxlength="20" id="doc-ipt-email-1" placeholder="请输入用户名">
					</div><br>
					<div class="am-form-group">
						<input  type="password" name="password"  id="doc-ipt-pwd-1" placeholder="设置个密码吧">
					</div>
					<p>
	         <input type="submit" value="登录"/></p>
				</fieldset>
			</form>
		</div>
	</div>
</div>

  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/amazeui.min.js"></script>
  <script src="assets/js/app.js"></script>
</body>

</html>