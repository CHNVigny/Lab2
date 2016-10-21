<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="database.AllBooks,po.book,po.author,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="dk-fouc has-js">
  <head>
    <base href="<%=basePath%>">
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
    
    <title>Welcome to my library!</title>
    
	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	
	
  	</head>

  <body>
  <h3 align="center" class="demo-logo">欢迎登陆图书管理系统</h3>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  
  	<div class="container">
      
      <div class="row demo-row">
        <div class="span3">
          <div align="center"><a href="Search.jsp" class="btn btn-large btn-block btn-success">作者查询</a></div>
        </div>
        
        
       
      </div> <!-- /row -->

    </div> <!-- /container -->
    <br>
    <div class="container">
     <br>
      <div class="row demo-row">
        
        <div class="span3">
          <div align="center"><a href="detectBook.action" class="btn btn-large btn-block btn-primary">馆藏书籍</a>
          </div>
        </div>
        
       
      </div> <!-- /row -->
	
    </div> <!-- /container -->
    <br>
    <div class="container">
      <br>
      <div class="row demo-row">
       
        
        <div class="span3">
          <div align="center"><a href="AddBook.jsp" class="btn btn-large btn-block btn-info"> 添加书籍  </a></div>
        </div>
       
      </div> <!-- /row -->

    </div> <!-- /container -->
<!--   
<div class="container">
  	<h3 align="center" class="demo-logo">欢迎登陆图书管理系统</h3>
  	
 
  	<div class="row demo-row" >
   
      <div class="span3"><a href="Search.jsp" class="button button-glow button-border button-rounded button-primary">根据作者查询</a></div>
    
      <div class="span3"><a href="Allbooks.jsp" class="button button-glow button-border button-rounded button-primary">根据作者查询</a></div>
   
      <div class="span3"><a href="AddBook.jsp" class="button button-glow button-border button-rounded button-primary">添加书籍</a></div>
   
</div>
-->
<!--  
<section id="buttons-glow" class="showcase">
  <div class="l-over showcase-content">

  	<div class="showcase-examples l-over l-center">
  
  		<a href="Search.jsp" class="button button-glow button-border button-rounded button-primary">根据作者查询</a>
  		<a href="Allbooks.jsp" class="button button-glow button-border button-rounded button-primary">查看所有书籍</a>
  		<a href="AddBook.jsp" class="button button-glow button-border button-rounded button-primary">添加书籍</a>
  </div>

  </div>

  </section>
-->
<!--  
<div class="row demo-row">
	<div class="showcase-examples l-over l-center" >
		<div align="center"><a href="Search.jsp" class="btn btn-large btn-block">根据作者查询</a>
          </div>
	</div>
   	<div class="showcase-examples l-over l-center">
		<div align="center"><a href="Allbooks.jsp" class="btn btn-large btn-block">查看所有书籍</a>
        </div>
	</div>
    <div class="showcase-examples l-over l-center">
		<div align="center"><a href="AddBook.jsp" class="btn btn-large btn-block">添加书籍</a>
        </div>
	</div>
  </div> <!-- /row -->

<!--  
	<form action="Search.jsp">

		<input type=submit value="根据作者查询"> 

	</form>
	<form method=get action=Allbooks.jsp>


		<input type=submit value=查看所有书籍>

	</form>
	<form method=get action=AddBook.jsp>


		<input type=submit value=添加书籍>

	</form>
-->
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

