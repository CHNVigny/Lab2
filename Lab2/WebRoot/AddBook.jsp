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
    
    <title>Add</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
  	
  </head>
  
  <body>
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

<div class="span3" align="center">
  <form action="addBook.action" accept-charset="UTF-8">
<table id="table-2" align="center">
		
		<tr>
			
			<td>isbn</td> 
			<td>title</td> 
			<td>publisher</td> 
			<td>publishdate</td> 
			<td>price</td> 
			<td>author</td> 
			<td>author age</td> 
			<td>author country</td> 
			<td></td>
			<td></td>
		</tr>
		
			<tr>
			
			<td><input style="width:120px;" class="span3" type=text name="isbn"></td> 
			<td><input style="width:120px;" class="span3" type=text name="title"></td> 
			<td><input style="width:120px;" class="span3" type=text name="publisher"></td> 
			<td><input style="width:120px;" class="span3" type=text name="publishdate"></td> 
			<td><input style="width:120px;" class="span3" type=text name="price"></td> 
			<td><input style="width:120px;" class="span3" type=text name="name"></td> 
			<td><input style="width:120px;" class="span3" type=text name="age"></td> 
			<td><input style="width:120px;" class="span3" type=text name="country"></td> 
			<td><input class="btn btn-warning btn-large btn-block" type=submit value="submit"></td>
			<td><a href="index.jsp" class="btn btn-large btn-block btn-danger" style="width:52.8px;">主页</a></td>
			
		</tr>
		
		
	</table>
	</form> 
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
  
   
    
     
   
     
   
    <div align="justify"><!-- /container -->
      
      
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
</body>
</html>
