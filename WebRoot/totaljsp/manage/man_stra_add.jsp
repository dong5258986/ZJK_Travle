<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>攻略管理</title>
    <base href="<%=basePath%>">
    <link rel="icon" type="image/png" href="../../images/favicon.png">
    <link rel="icon" href="images/app-icon72x72@2x.png">
    
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/app.css">
    <script type="text/javascript" src="js/jquery/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="js/jquery/ajaxfileupload.js"></script>	
	<script type="text/javascript"  src="js/dz.js"></script>
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
                        <a href="index.jsp" class="nav-link">
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
                               
                                <a href="attraction/manageatt" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>景点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success">
							               18
							             </i>   </a>

                                    <a href="strategy/manageStr">
                                        <i class="am-icon-angle-right"></i>
                                        <span>攻略管理</span>
                                        <i class="tpl-left-nav-content tpl-badge-primary">
					               5
					             </i>   </a>


                                        <a href="hotel/managehotel">
                                            <i class="am-icon-angle-right"></i>
                                            <span>住宿管理</span>

                                        </a>
                                        <a href="specialty/mangspec">
                                            <i class="am-icon-angle-right"></i>
                                            <span>特产管理</span>

                                        </a>
                                         <a href="specialty/mangspec">
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
                旅游网表单
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">表单</a></li>
                <li class="am-active">旅游网表单</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 表单
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
                        <div class="tpl-form-body tpl-form-line">
                              <form class="am-form tpl-form-line-form"  >
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">攻略标题</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input"   id="str_title" name="str_title" placeholder="请输入标题文字"/>
                                    </div>
                                </div>

                               <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">推荐时间 </label>
                                    <div class="am-u-sm-9">
                                        <input type="text"  name="str_rectime"  id="str_rectime"placeholder="">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">景点图片 </label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <div class="tpl-form-file-img">
                                                <img src="images/a5.png" alt="">
                                            </div>
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
   												 <i class="am-icon-cloud-upload"></i> 添加封面图片</button>
                                            <input id="fileToUpload" type="file" name="file1"  multiple>
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">攻略简述 </label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="str_simpleinfo" name="str_simpleinfo" placeholder="请添加分类用点号隔开">
                                        <div>

                                        </div>
                                    </div>
                                </div>

                              
                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">攻略详情</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="10" id="str_info" name="str_info"placeholder="请输入文章内容"></textarea>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="button" onclick=" addstra();" value="上传">
                                    </div>
                                </div>
                         </form>
                        </div>
                    </div>
                </div>


            </div>



        </div>

    </div>



    <script src="js/amazeui.min.js"></script>
    <script src="js/app.js"></script>
</body>

</html>