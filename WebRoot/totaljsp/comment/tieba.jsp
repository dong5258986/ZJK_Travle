<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.springframework.web.context.request.RequestScope"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>游记</title>
 <base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="css/tieba.css" />
	<link rel="stylesheet" type="text/css" href="css/ripple.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link href="css/inde.css" rel="stylesheet">
   
    <script type="text/javascript" src="js/bootstrap.min.js"></script> 
    <script src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
	<script src="https://mindmup.s3.amazonaws.com/lib/jquery.hotkeys.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    <script src="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.js"></script>
    <script src="js/bootstrap-wysiwyg.js"></script>
</head>
<body>
<!-- 导航栏 -->
<jsp:include flush="ture" page="../../header.jsp"></jsp:include>
<div style="width:110px; margin:0 0 0 800px;"><img src="images/yzb.png" ></div>
<div class="box">

<h2 style="text-align:center;margin:0 0 10px 0;">山城小记</h2>

<!-- 标题 -->
标题:<input type="text" style="margin: 20px 10px ; width:300px;height:35px; cursor: pointer;border-radius:5px;border:1px solid rgb(204, 204, 204);" />

<!-- 文本框 -->
<!-- <textarea id="editor" placeholder="这里输入内容" autofocus></textarea> -->

  <div class="hero-unit">

    <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">



      <div class="btn-group">

        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>

          <ul class="dropdown-menu">

          </ul>

        </div>



      <div class="btn-group">

        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>

          <ul class="dropdown-menu">

          <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>

          <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>

          <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>

          </ul>

      </div>



      <div class="btn-group">

        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>

        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>

        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>

        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>

      </div>



      <div class="btn-group">

        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>

        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>

        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>

        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>

      </div>



      <div class="btn-group">

        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>

        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>

        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>

        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>

      </div>



      <div class="btn-group">

		  <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>

		    <div class="dropdown-menu input-append">

			    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>

			    <button class="btn" type="button">Add</button>

        </div>

        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>



      </div>

      

      <div class="btn-group">

        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>

        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />

      </div>



      <div class="btn-group">

        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>

        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>

      </div>



      <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">

    </div>



    <div id="editor">

   <!-- 文本框内容填写  -->

    </div>



  </div>

 <div style="margin:5px  0  0 800px;">
 <button >
        发布
    </button>
</div> 

<script>

  $(function(){

    function initToolbarBootstrapBindings() {

      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 

            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',

            'Times New Roman', 'Verdana'],

            fontTarget = $('[title=Font]').siblings('.dropdown-menu');

      $.each(fonts, function (idx, fontName) {

          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));

      });

      $('a[title]').tooltip({container:'body'});

    	$('.dropdown-menu input').click(function() {return false;})

		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})

        .keydown('esc', function () {this.value='';$(this).change();});



      $('[data-role=magic-overlay]').each(function () { 

        var overlay = $(this), target = $(overlay.data('target')); 

        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());

      });

      if ("onwebkitspeechchange"  in document.createElement("input")) {

        var editorOffset = $('#editor').offset();

        $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});

      } else {

        $('#voiceBtn').hide();

      }

	};

	function showErrorAlert (reason, detail) {

		var msg='';

		if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }

		else {

			console.log("error uploading file", reason, detail);

		}

		$('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>'+ 

		 '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');

	};

    initToolbarBootstrapBindings();  

	$('#editor').wysiwyg({ fileUploadError: showErrorAlert} );

    window.prettyPrint && prettyPrint();

  });

</script>
   
     <!-- 按钮 -->
  <script src="js/ripple.min.js" charset="UTF-8"></script>
<script type="text/javascript">
    new Ripple({
        opacity : 0.6,  //水波纹透明度
        speed : 1,      //水波纹扩散速度
        bgColor : "#fff", //水波纹颜色
        cursor : true  //是否显示手型指针
    })
</script>  
 
</div>


<!--footer-starts-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-3 footet-left">
					<h3>INFORMATION</h3>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="typography.html">Shortcodes</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3 footet-left">
					<h3>CATEGORIES</h3>
					<ul>
						<li><a href="#">Travlio</a></li>
						<li><a href="#">Whizz</a></li>
						<li><a href="#">Sayohat</a></li>
						<li><a href="#">Turistik</a></li>
						<li><a href="#">Excursion </a></li>
					</ul>
				</div>
				<div class="col-md-3 footet-left">
					<h3>MY ACCOUNT</h3>
					<ul>
						<li><a href="#">My account</a></li>
						<li><a href="#">My addresses</a></li>
					</ul>
				</div>
				<div class="col-md-3 footet-left">
					<h3>NEWSLETTER</h3>
					<div class="sub-text">
						<input type="text" value="Enter Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email';}"/>
						<input type="submit" value="" >
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="copy-rights">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		</div>
<!---->
</div>
			<!---->
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
<script type="text/javascript">
    var editor = new Simditor({
      textarea: $('#editor')
    });
  </script>

</html>