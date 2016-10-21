<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="database.AllBooks,po.book,po.author,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link href="css/modern.css" rel="stylesheet">
    <link href="css/modern-responsive.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet" type="text/css">
    <link href="http://cdn.bootcss.com/prettify/r224/prettify.css" rel="stylesheet" type="text/css">
    <link href="Metro-UI-CSS-master/build/css/metro.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.bootcss.com/jquery-mousewheel/3.0.6/jquery.mousewheel.min.js"></script>

    <script type="text/javascript" src="js/modern/dropdown.js"></script>
    <script type="text/javascript" src="js/modern/accordion.js"></script>
    <script type="text/javascript" src="js/modern/buttonset.js"></script>
    <script type="text/javascript" src="js/modern/carousel.js"></script>
    <script type="text/javascript" src="js/modern/input-control.js"></script>
    <script type="text/javascript" src="js/modern/pagecontrol.js"></script>
    <script type="text/javascript" src="js/modern/rating.js"></script>
    <script type="text/javascript" src="js/modern/slider.js"></script>
    <script type="text/javascript" src="js/modern/tile-slider.js"></script>
    <script type="text/javascript" src="js/modern/tile-drag.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
	
	
 	<link rel="stylesheet" href="http://cdn.bootcss.com/animate.css/3.2.0/animate.min.css">
  	<link rel="stylesheet" href="css/showcase.css">
  	<link rel="stylesheet" href="css/buttons.css">
  	<link rel="stylesheet" href="css/grids.css">


  	<!-- ICONS & FONTS -->
  	<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  	<link rel="stylesheet" href="fonts/icomoon/style.css">

 	
  	<link href="Flat-UI-master/dist/css/flat-ui.css" rel="stylesheet" type="text/css">
  	<link href="css/flat-ui.css" rel="stylesheet">
  	<link rel="shortcut icon" href="images/favicon.ico">
    <title>Error!</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h3 align="center" class="demo-logo">Error! No book in the library!</h3><br>
    <div align="center"><br>
  <div class="container"> 
      <div class="row demo-row">
        <div class="span3">
          <div align="center"><a href="AddBook.jsp" class="btn btn-large btn-block btn-danger">添加书籍</a></div>
        </div>
      </div> <!-- /row -->
    </div> <!-- /container -->
   <br>
   
    <div class="container"> 
      <div class="row demo-row">
        <div class="span3">
          <div align="center"><a href="index.jsp" class="btn btn-large btn-block btn-danger">返回首页</a></div>
        </div>
      </div> <!-- /row -->
    </div> <!-- /container -->
    
    <script type="text/javascript" src="http://cdn.bootcss.com/prettify/r224/prettify.js"></script>

    <script src="/p/projects.js"></script>
  </div>
  	<script src="http://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery-ui-1.10.0.custom.min.js"></script>
    <script src="js/jquery.dropkick-1.0.0.js"></script>
    <script src="js/custom_checkbox_and_radio.js"></script>
    <script src="js/custom_radio.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/jquery.tagsinput.js"></script>
    <script src="http://cdn.bootcss.com/jquery-placeholder/2.0.7/jquery.placeholder.min.js"></script>
    <script src="http://vjs.zencdn.net/c/video.js"></script>
    <script src="js/application.js"></script>
    <script src="/p/projects.js"></script>
    
  </body>
</html>
