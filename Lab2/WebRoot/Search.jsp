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
    <link href="http://cdn.bootcss.com/twitter-bootstrap/2.2.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="css/flat-ui.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="http://cdn.bootcss.com/animate.css/3.2.0/animate.min.css">
  	<link rel="stylesheet" href="css/showcase.css">
  	<link rel="stylesheet" href="css/buttons.css">
  	<link rel="stylesheet" href="css/grids.css">
  	
  


  	<!-- ICONS & FONTS -->
  	<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  	<link rel="stylesheet" href="fonts/icomoon/style.css">
  	
    
    <title>Search</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <div class="container"> 
	<div align="center"><br>
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  <br>
	  
	  
	  
  </div>
  <rt>
  <div class="row">
 
    <div class="span3">
      <form action="detectAuthor.action">
          
        
          <div align="center">
            <input type="text" value placeholder="请输入作者姓名" class="span3" name="name" style="width:641px;height:40px;text-align:center">
          </div>
          <div class="col-md-offset-4 col-md-8">
            <div align="center">
              <input type="submit" value="Search" class="btn btn-warning btn-large btn-block">
            </div>
          </div>
      </form>
    </div>
    
    </div>
  </rt>
 
  

	<div align="center">
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
	  <script src="http://cdn.bootcss.com/prettify/r298/prettify.min.js"></script>
	  <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	  <script type="text/javascript" src="js/scrollMonitor.js"></script>
	  <script type="text/javascript" src="js/zeroclipboard/dist/ZeroClipboard.js"></script>
	  <script type="text/javascript" src="js/polyfill.js"></script>
	  <script type="text/javascript" src="js/smooth-scroll.js"></script>
	  <script type="text/javascript" src="js/handlebars.js"></script>
	  <script type="text/javascript" src="js/showcase.js"></script>
	  <script type="text/javascript" src="js/buttons.js"></script>
	  <script src="/p/projects.js"></script>
	  
  </div>
  <br>
  <br>
  <br>
  
      <div class="row demo-row">

        <div class="span3">
          <div align="center"><a href="index.jsp" class="btn btn-large btn-block btn-danger">主页</a></div>
        </div>
      </div> <!-- /row -->
    </div> <!-- /container -->
  </body>
</html>
