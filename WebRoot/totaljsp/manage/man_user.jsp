<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String bb = (String)session.getAttribute("wuquanxian");
String cc = (String)session.getAttribute("chenggong");
String role=(String)session.getAttribute("role");
boolean a = (bb!=null);
boolean c = (cc!=null);
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
 <!doctype html>
<html>

<head>
<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>旅游网人员管理</title>
 
    <link rel="icon" type="image/png" href="images/favicon.png" />
    <link rel="icon" href="images/app-icon72x72@2x.png"/>
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css"/>
    <link rel="stylesheet" href="css/app.css"/>
     <!--  -->
       <link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/anniu1.css" />
		<link rel="stylesheet" type="text/css" href="css/anniu2.css" />
		<script src="js/modernizr.custom.js"></script>
      <script type="text/javascript">
		  	var a=<%=a%>;
			if(a){
				alert("<%=bb %>");
			}
			var c=<%=c%>;
			if(c){
				alert("<%=cc %>");
			}
	  </script>
</head>

<body data-type="generalComponents">

<jsp:include page="main_header.jsp"></jsp:include>
    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                旅游网列表
            </div>
             <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="totaljsp/manage/man_index.jsp" class="nav-link">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                   
                    <li class="tpl-left-nav-item">
                       
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-table"></i>
                            <span>内容修改</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <!-- 打开状态 a 标签添加 active 即可   -->
                                <a href="user/viewalluser" class="active">
                                    <i class="am-icon-angle-right"></i>
                                     <span>人员管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                               
                                <a href="attraction/manageatt" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>景点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">
						               18
						             </i>  </a>

                                    <a href="strategy/manageStr">
                                        <i class="am-icon-angle-right"></i>
                                        <span>攻略管理</span>
                                        <i class="tpl-left-nav-content tpl-badge-primary">
							               5
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
                                        <a href="form-olmmpic.jsp" >
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
                旅游网人员管理
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">内容修改</a></li>
                <li class="am-active">人员管理</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 列表
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                           
				
						 <button type="button" class="am-btn am-btn-default am-btn-success"	onclick="javascript:window.location.href='totaljsp/manage/man_user_add.jsp' "> 新增</button>
				
				
		
                                </div>
                            </div>
                        </div>
                       
                       
                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            
                                            <th class="table-title">用户名</th>
                                          
                                            <th class="table-author am-hide-sm-only">真实姓名</th>
                                       
                                              <th class="table-type">联系方式</th>
                                               
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    
					                <c:if test="${empty requestScope.users }">
					    			没有数据！！
					  		 		 </c:if>
									<c:if test="${!empty requestScope.users }">
                                    <tbody>
                                     <c:forEach items="${requestScope.users }" var="str1">
                                        <tr>
                                          
                                            <td><a href="#">${str1.username}</a></td>
                                           <td class="am-hide-sm-only">${str1.turename}</td>
                                            <td class="am-hide-sm-only">${str1.phone}</td>
                                          
                                             <td>
                                                <div class="">
                                                    <div class="">
                                                                                                                                     																				 
												<div class="md-modal md-effect-5" id="modal-5">
												<div class="md-content">
													<h5>修改</h5>	
													  <div class="md-close"><span class='close'></span></div>
															<div>
														<ul>
															<li><strong>用户名：</strong><input type="text"   id="usname"  value="" /></li>
															<li><strong>真实姓名:</strong><input type="text"   id="trname"  value="" /></li>
															<li><strong>手机号码:</strong><input type="text"   id="phone"  value=""  /></li>
															<li><div style="margin:-5px 0 0 0;">
															<strong >个人介绍:</strong>
															</div>
															<textarea type="text" style="margin:-10px  0  0 80px;" ></textarea></li>
														</ul>	
														<span style="display:none" id="userid"></span>
													<input style="margin: 0 200px ; width:100px; cursor: pointer;" id="btnClose" type="button" value="修改" onClick="edituser()" />
													</div>
												</div>
											</div>
										
												<button type="button" class="md-trigger am-btn" data-modal="modal-5"   onclick="finduserbyid(${str1.id})">编辑</button>
										
                                                 <button type="button" class="am-btn am-btn-default am-btn-danger"  onclick="deleteuser(${str1.id})"> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                         </c:forEach>
                                    </tbody>
									</c:if>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>

                            </form>
                        </div>

                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>


        </div>

    </div>
 </div>
 <!--  -->
<script language="javascript">
function custom_close(){
if
(confirm("修改成功！")){

window.close();
}
else{}
}
</script>
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>
		<script>
			
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>
    <script src="js/dz.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
</body>

</html>