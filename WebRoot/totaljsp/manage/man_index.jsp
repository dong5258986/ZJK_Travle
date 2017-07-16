<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String bb = (String)session.getAttribute("wuquanxian");
String cc = (String)session.getAttribute("chenggong");
String role=(String)session.getAttribute("role");
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
    
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>张家口旅游管理</title>
  <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="icon" href="images/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/app.css"/>
    <script src="js/echarts.min.js"></script>
    <script src="js/amazeui.min.js"></script>
</head>

<body data-type="index">
    
	<jsp:include page="main_header.jsp"></jsp:include>
    <div class="tpl-page-container tpl-page-header-fixed">
        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                	旅游网列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="totaljsp/manage/man_index.jsp" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                   
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>内容修改</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="user/viewalluser">
                                    <i class="am-icon-angle-right"></i>
                                    <span>人员管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="attraction/manageatt">
                                    <i class="am-icon-angle-right"></i>
                                    <span>景点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"> </i>
			           			</a>

                                    <a href="strategy/manageStr">
                                        <i class="am-icon-angle-right"></i>
                                        <span>攻略管理</span>
                                        <i class="tpl-left-nav-content tpl-badge-primary">
							             </i>
							             </a>	
                                        <a href="hotel/managehotel">
                                            <i class="am-icon-angle-right"></i>
                                            <span>住宿管理</span>

                                        </a>
                                         <a href="specialty/mangspec">
                                            <i class="am-icon-angle-right"></i>
                                            <span>特产管理</span>

                                        </a>
                                         <a href="travel/managepost">
                                            <i class="am-icon-angle-right"></i>
                                            <span>旅游圈管理</span>

                                        </a>
                                        <a href="form-olympic.jsp">
                                            <i class="am-icon-angle-right"></i>
                                            <span>奥运管理</span>

                                        </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="index.jsp" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>回到前台</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                	旅游网首页组件
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">分类</a></li>
                <li class="am-active">内容</li>
            </ol>
            <div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>旅游网&nbsp;&nbsp;&nbsp;为广大驴友而生
                        <span class="close" data-close="note"></span>
                    </h3>
                    <p> 旅游网包括:景点介绍，住宿出行，旅游攻略，特产，旅游圈，奥运介绍等部分</p>
                    <p><span class="label label-danger">提示:</span> 为广大来着张家口旅游的人们提供了全方面的服务。
                    </p>
                </div>
            </div>

             </div>                                                                              
                                       
</div>
                        
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
</body>

</html>