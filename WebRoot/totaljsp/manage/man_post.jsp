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
    <meta charset="utf-8">
     <base href="<%=basePath%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>张家口旅游圈管理</title>
    
    <link rel="icon" type="image/png" href="mages/favicon.png">
    <link rel="icon" href="images/app-icon72x72@2x.png">
 
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">
 
       <link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="css/anniu1.css" />
		<link rel="stylesheet" type="text/css" href="css/anniu2.css" />
		<script src="js/modernizr.custom.js"></script>
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
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-table"></i>
                            <span>内容修改</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="user/viewalluser">
                                    <i class="am-icon-angle-right"></i>
                                    <span>人员管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <!-- 打开状态 a 标签添加 active 即可   -->
                                <a href="attraction/manageatt" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>景点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">
								               18
								             </i>
								</a>
                                    <a href="strategy/manageStr">
                                        <i class="am-icon-angle-right"></i>
                                        <span>攻略管理</span>
                                        <i class="tpl-left-nav-content tpl-badge-primary">
						               5
						             </i></a>
						

                                        <a href="hotel/managehotel">
                                            <i class="am-icon-angle-right"></i>
                                            <span>住宿管理</span>

                                        </a>
                                        <a href="specialty/mangspec">
                                            <i class="am-icon-angle-right"></i>
                                            <span>特产管理</span>

                                        </a>
                                         <a href="travel/managepost"class="active">
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
                旅游网景点管理
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">内容修改</a></li>
                <li class="am-active">旅游圈管理</li>
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


 		<div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
 
	
			 <button type="button" class="am-btn am-btn-default am-btn-success"	onclick="javascript:window.location.href='totaljsp/manage/man_post_add.jsp' "><span class="am-icon-plus"></span> 新增</button>
                                    
		<div class="md-overlay"></div>

                                </div>
                            </div>
                        </div>


                </div></p>
                
                    <div class="am-g">
                        <div class="tpl-table-images">
                            
                        <c:if test="${empty requestScope.posts }">
					    			没有数据！！
					  		 		 </c:if>
									<c:if test="${!empty requestScope.posts }">
                                    <tbody>
                                     <c:forEach items="${requestScope.posts }" var="str1">
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time"></div>
                                    <div class="tpl-i-title">
                                        ${str1.p_title}
                                    </div>
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                        <div class="tpl-table-images-content-i-info">
                                            <span class="ico">
                                    <img src="images/ ${str1.p_image}" 	alt=""/>
                                 </span>
                                   </div>
                                        <span class="tpl-table-images-content-i-shadow"></span>
                                        <img src="images/${str1.p_image}" 	alt=""/>
                                    </a>
                                    <div class="tpl-table-images-content-block">
                                        <div class="tpl-i-font">
                                        ${str1.p_info}
                                        </div>
                                        <div class="tpl-i-more">
                                            <ul>
                                           </ul>
                                        </div>
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
                                                
                                                            <!--  -->
			            <div class="md-modal md-effect-5" id="modal-5">
						<div class="md-content">
							<h5>修改</h5>	
			  <div class="md-close"><span class='close'></span></div>
							<div>
								<p>请填写您需要修改的信息:</p>
								<ul>
									<li><strong>&nbsp;用户名：</strong><input type="text" /></li>
									<li><strong>真实姓名:</strong><input type="text" /></li>
									<li><strong>手机号码:</strong><input type="text" /></li>
									<li><div style="margin:-5px 0 0 0;">
									<strong >
									内容:</strong>
									</div>
									<textarea type="text" style="margin:-10px  0  0 80px;" ></textarea></li>
								</ul>	
								
					<input style="margin: 0 200px ; width:100px; cursor: pointer;" id="btnClose" type="button" value="修改" onClick="editpost()" />
				</div>
			</div>
		</div>
	
			<button type="button" class="md-trigger am-btn" data-modal="modal-5"><span class="am-icon-edit"></span>编辑</button>
	
								<div class="md-overlay"></div>
                            
                                                <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                               </c:forEach>
                             </tbody>
					</c:if>
					
                            
                            <div class="am-u-lg-12">
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
                            </div>

                        </div>

                    </div>
                </div>
                <div class="tpl-alert"></div>
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
			<script src="js/dz.js"></script>
		<script src="js/modalEffects.js"></script>
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>
		
<!--  -->
    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
</body>

</html>