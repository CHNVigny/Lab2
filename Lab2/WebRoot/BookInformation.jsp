<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="database.BookInformation,po.book,po.author,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Book Information</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
    
    <title>Welcome to my library!</title>
    
	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
	

  </head>
  
  <body>
  <div align="center">
    <%String isbn=request.getParameter("isbn");%>

  <style type="text/css">
/* Border styles */
#table-2 thead, #table-2 tr {
border-top-width: 1px;
border-top-style: solid;
border-top-color: rgb(230, 189, 189);
}
#table-2 {
border-bottom-width: 1px;
border-bottom-style: solid;
border-bottom-color: rgb(230, 189, 189);
}

/* Padding and font style */
#table-2 td, #table-2 th {
padding: 5px 10px;
font-size: 12px;
font-family: Verdana;
color: rgb(177, 106, 104);
}

/* Alternating background colors */
#table-2 tr:nth-child(even) {
background: rgb(238, 211, 210)
}
#table-2 tr:nth-child(odd) {
background: #FFF
}
</style>

    
  </div>
  <div align="center">
    <table id="table-2">
      
      <tr>
        
        <td>isbn</td>
        <td>title</td> 
        <td>publisher</td> 
        <td>publishdate</td>
        <td>price</td>
        <td>author</td>
        <td>age</td>
        <td>country</td>
        <td></td>
        <td></td>
        
        
        </tr>
      
      <%
			BookInformation bi = new BookInformation();
			book tl = new book();
			tl=bi.bookInformation(isbn);
		%>
      
      <tr>
        
        <td><%=tl.getIsbn() %></td> 
        <td><%=tl.getTitle() %></td>
        <td><%=tl.getPublisher() %></td>
        <td><%=tl.getPublishdate() %></td>
        <td><%=tl.getPrice() %></td>
        <td><%=tl.getAuthor() %></td>
        <td><%=tl.getAuthorAge() %></td>
        <td><%=tl.getAuthorCountry() %></td>
        <td><a style="text-decoration:none" href="updateBook_setIsbn.action?isbn=<%=tl.getIsbn() %>">update</a></td>
        <td><a style="text-decoration:none" href="DeleteBook.action?isbn=<%=tl.getIsbn() %>&name=<%=tl.getAuthor() %>">delete</a></td>
        </tr>
      
      
      
      </table>
  </div>
  <div align="center"><br>
  <div class="container"> 
      <div class="row demo-row">
        <div class="span3">
          <div align="center"><a href="javascript:history.go(-1);" class="btn btn-large btn-block btn-danger">返回</a></div>
        </div>
      </div> <!-- /row -->
    </div> <!-- /container -->
   <br>
   
    <div class="container"> 
      <div class="row demo-row">
        <div class="span3">
          <div align="center"><a href="index.jsp" class="btn btn-large btn-block btn-danger">主页</a></div>
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
