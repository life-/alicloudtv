<%--
  Created by IntelliJ IDEA.
  User: zoujuan
  Date: 2016/8/12
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <%
        String username = (String)request.getAttribute("username");
        String password = (String)request.getAttribute("password");
        String token = (String)request.getAttribute("token");
    %>
    <meta charset="utf-8"/>
    <title>云上创业-视频直播</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <link href="static/css/css.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/pages/blog.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->

    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>
    <script src="assets/plugins/excanvas.min.js"></script>
    <![endif]-->
    <script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
    <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <link rel="stylesheet" href="http://g.alicdn.com/de/prismplayer/1.4.2/skins/default/index.css" />
    <script type="text/javascript" src="http://g.alicdn.com/de/prismplayer/1.4.2/prism.js"></script>

    <!--sdk-->
    <script src="static/sdk/strophe.js"></script>
    <script src="static/sdk/easemob.im-1.1.1.js"></script>
    <%--<script src="static/sdk/easemob.im.shim.js"></script><!--兼容老版本(1.0.7含以前版本)sdk需引入此文件-->--%>

    <!--config-->
    <script src="static/js/easemob.im.config.js"></script>

    <link rel="stylesheet" href="static/css/webim.css" />


    <!--[if lte IE 9]>
    <script src="static/js/jplayer/jquery.jplayer.min.js"></script>
    <script src="static/js/swfupload/swfupload.js"></script>
    <![endif]-->

    <script src="assets/scripts/core/app.js"></script>
    <script src="static/js/webim2.js"></script>

    <script src="static/js/loghub-tracking.js"></script>

    <script src="static/js/live.js"></script>

    <script>
        jQuery(document).ready(function() {
            App.init();
            Live.init({
                username:'<%=username%>',
                password:'<%=password%>',
                token:'<%=token%>'
            });
        });
    </script>
    <!-- END JAVASCRIPTS -->

    <link rel="shortcut icon" href="favicon.ico"/>
</head>

<body class="page-header-fixed page-full-width">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-fixed-top mega-menu">
<!-- BEGIN TOP NAVIGATION BAR -->
<div class="header-inner">
<!-- BEGIN LOGO -->
<a class="navbar-brand" href="index.html">
    <img src="assets/img/AliCloudTV-dark.png" alt="logo" class="img-responsive" style="max-width: 170px;margin-top: -10px;"/>
</a>
<!-- END LOGO -->
<!-- BEGIN HORIZANTAL MENU -->
<div class="hor-menu hidden-sm hidden-xs">
<ul class="nav navbar-nav">
<li class="classic-menu-dropdown active">
    <a href="index.html">
        首页
						<span class="selected">
						</span>
    </a>
</li>
<li class="mega-menu-dropdown">
    <a href="#">
        全部
    </a>
</li>
<li class="classic-menu-dropdown">
    <a data-toggle="dropdown" data-hover="dropdown" data-close-others="true" href="">
        分类 <i class="fa fa-angle-down"></i>
    </a>
    <ul class="dropdown-menu">
        <li>
            <a href="#">
                分类 1
            </a>
        </li>
        <li>
            <a href="#">
                分类 2
            </a>
        </li>
        <li>
            <a href="#">
                分类 3
            </a>
        </li>
        <li>
            <a href="#">
                分类 4
            </a>
        </li>
        <li>
            <a href="#">
                全部
            </a>
        </li>
    </ul>
</li>
    <li class="mega-menu-dropdown">
        <a href="http://datav.aliyun.com/share/b5ea5d1ef0dae7975e65c04129772e98?spm=0.0.0.0.AaWsOS" target="_blank">
            监控
        </a>
    </li>
<li>
					<span class="hor-menu-search-form-toggler">
						 &nbsp;
					</span>
    <div class="search-form">
        <form class="form-search">
            <div class="input-group">
                <input type="text" placeholder="Search..." class="form-control">
                <div class="input-group-btn">
                    <button type="button" class="btn"></button>
                </div>
            </div>
        </form>
    </div>
</li>
</ul>
</div>
<!-- END HORIZANTAL MENU -->
<!-- BEGIN RESPONSIVE MENU TOGGLER -->
<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    <img src="assets/img/menu-toggler.png" alt=""/>
</a>
<!-- END RESPONSIVE MENU TOGGLER -->
<!-- BEGIN TOP NAVIGATION MENU -->
<ul class="nav navbar-nav pull-right">

<!-- BEGIN USER LOGIN DROPDOWN -->
<li class="dropdown user">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <img alt="" src="static/img/head/0001.jpg" style="max-width: 25px;"/>
					<span class="username hidden-1024">
					</span>
        <i class="fa fa-angle-down"></i>
    </a>
    <ul class="dropdown-menu">
        <li>
            <a href="javascript:;">
                <i class="fa fa-user"></i> 我的资料
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-calendar"></i> 我的日历
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-envelope"></i> 我的关注
							<span class="badge badge-danger">
								 3
							</span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-tasks"></i> 我的历史
							<span class="badge badge-success">
								 7
							</span>
            </a>
        </li>
        <li class="divider">
        </li>
        <li>
            <a href="javascript:;" id="trigger_fullscreen">
                <i class="fa fa-arrows"></i> 添加好友
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-lock"></i> 删除好友
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-key"></i> 退出
            </a>
        </li>
    </ul>
</li>
<!-- END USER LOGIN DROPDOWN -->
</ul>
<!-- END TOP NAVIGATION MENU -->
</div>
<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
<div class="page-content" style="padding:0px 20px 20px 20px">
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Widget settings form goes here
            </div>
            <div class="modal-footer">
                <button type="button" class="btn blue">Save changes</button>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
<div class="col-md-12 blog-page">
<div class="row">
<div class="col-md-9 article-block">
    <%--<h3>Hello here will be some recent news..</h3>--%>
    <br>
    <div class="blog-tag-data">
        <div class="prism-player" id="J_prismPlayer" style="width: 100%; height: 550px;">
            <%--<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"--%>
                    <%--codebase="//download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"--%>
                    <%--width="100%" height="100%" id="prism-player-6F20E793-B089-47BB-8A8B-EA8C7A32B5C8">--%>
                <%--<param name="movie" value="http://g.alicdn.com/de/prismplayer-flash/1.1.16/PrismPlayer.swf">--%>
                <%--<param name="quality" value="High">--%>
                <%--<param name="FlashVars"--%>
                       <%--value="autoPlay=0&amp;from=de_player&amp;isInner=0&amp;actRequest=1&amp;vid=undefined&amp;domain=//tv.taobao.com&amp;statisticService=//log.video.taobao.com/stat/&amp;videoInfoService=/player/json/getBaseVideoInfo.do&amp;disablePing=0&amp;namespace=prism-player-6F20E793-B089-47BB-8A8B-EA8C7A32B5C8&amp;barMode=0&amp;isLive=1&amp;waterMark=&amp;vurl=http%3A%2F%2Flivevideo.nongfuguoyuan.mobi%2Ftest1%2Fucast.flv&amp;plugins=&amp;snapShotShow=0&amp;encryp=null&amp;secret=null&amp;cover=http://077262.oss-cn-hangzhou.aliyuncs.com/demo/video_pic.png">--%>
                <%--<param name="WMode" value="opaque">--%>
                <%--<param name="AllowScriptAccess" value="always">--%>
                <%--<param name="AllowFullScreen" value="true">--%>
                <%--<param name="AllowFullScreenInteractive" value="true">--%>
                <%--<embed name="prism-player-6F20E793-B089-47BB-8A8B-EA8C7A32B5C8"--%>
                       <%--src="http://g.alicdn.com/de/prismplayer-flash/1.1.16/PrismPlayer.swf" quality="high"--%>
                       <%--pluginspage="//www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"--%>
                       <%--type="application/x-shockwave-flash" width="100%" height="100%" allowscriptaccess="always"--%>
                       <%--allowfullscreen="true" allowfullscreeninteractive="true" wmode="opaque"--%>
                       <%--flashvars="autoPlay=0&amp;from=de_player&amp;isInner=0&amp;actRequest=1&amp;vid=undefined&amp;domain=//tv.taobao.com&amp;statisticService=//log.video.taobao.com/stat/&amp;videoInfoService=/player/json/getBaseVideoInfo.do&amp;disablePing=0&amp;namespace=prism-player-6F20E793-B089-47BB-8A8B-EA8C7A32B5C8&amp;barMode=0&amp;isLive=1&amp;waterMark=&amp;vurl=http://077262.oss-cn-hangzhou.aliyuncs.com/demo/demo.m3u8&amp;plugins=&amp;snapShotShow=0&amp;encryp=null&amp;secret=null&amp;cover=http://077262.oss-cn-hangzhou.aliyuncs.com/demo/video_pic.png">--%>
            <%--</object>--%>
        </div>
        <script>

            var player = new prismplayer({
                id: 'J_prismPlayer',
                width: '100%',
                height: '550px',
                barMode: 0,
                source: 'http://077262.oss-cn-hangzhou.aliyuncs.com/demo/demo.m3u8',
                autoplay: true,
                isLive:true,
                cover:'http://077262.oss-cn-hangzhou.aliyuncs.com/demo/video_pic.png'
            });

        </script>

    </div>
    <!--end news-tag-data-->

    <hr>
    <div class="media">
        <h3>直播详情</h3>
        <a href="#" class="pull-left">
            <img alt="" src="assets/img/blog/9.jpg" class="media-object">
        </a>
        <div class="media-body">

        </div>
    </div>
</div>
<!--end col-md-9-->
<div class="col-md-3 blog-sidebar">
   <br>
<div class="tabbable tabbable-custom">
    <ul class="nav nav-tabs">
        <li class="active">
            <a data-toggle="tab" href="#barrage-content">
                弹幕
            </a>
        </li>
    </ul>
    <div class="tab-content">
        <div id="barrage-content" class="tab-pane active" style="height: 436px;overflow-y:auto;">

        </div>
    </div>
</div>
    <div class="input-group">
        <input type="text" class="form-control" id="one-barrage-content" placeholder="弹幕">
											<span class="input-group-btn">
												<button class="btn blue" id="send-barrage" type="button">发送</button>
											</span>
    </div>

    <div class="space20">
</div>
</div>
<!--end col-md-3-->
</div>
</div>
</div>
<!-- END PAGE CONTENT-->
</div>
</div>
<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        © 2016 AliCloudTV.com 版权所有
    </div>
    <div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
    </div>
</div>
<!-- END FOOTER -->
</body>
</body>
</html>
