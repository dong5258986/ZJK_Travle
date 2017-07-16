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
		
		<div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">
		
		      <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal"  action="user/sign" method="post">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">用户名</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-name" placeholder="姓名 / Name"  name="username">
                                        
                                    </div>
                                </div>
                                <br/>
                                 <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">密码</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="user-phone" placeholder="输入你的密码/ Password"	name="password" >
                                    </div>
                                </div>
                                <br/>
                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件</label>
                                    <div class="am-u-sm-9">
                                        <input type="email" id="user-email" placeholder="输入你的电子邮件 / Email" name="useremail">
                                    </div>
                                </div>
                                 <br/>
                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">电话</label>
                                    <div class="am-u-sm-9">
                                        <input type="tel" id="user-phone" placeholder="输入你的电话号码 / Telephone" name="userphone">
                                    </div>
                                </div>                           
                                  <br/>                        
                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="submit" class="am-btn am-btn-primary"  value="立即注册" ></input>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
</body>
</html>