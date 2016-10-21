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
    
    <title>AllBooks</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
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
  </head>
  
  <body>
  	<div align="center">
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
  	      
  	      
  	      </tr>
  	    
  	    <%
			AllBooks bk = new AllBooks();
			List<book> list = bk.getBooks();
			for (book tl : list) {
		%>
  	    
  	    <tr>
  	      
  	      <td><%=tl.getIsbn() %></td> 
  	      <td><a style="text-decoration:none" href="BookInformation.jsp?isbn=<%=tl.getIsbn() %>"><%=tl.getTitle() %></a></td>
  	      <td><%=tl.getPublisher() %></td>
  	      <td><%=tl.getPublishdate() %></td>
  	      <td><%=tl.getPrice() %></td>
  	      <td><%=tl.getAuthor() %></td>
  	      <td><%=tl.getAuthorAge() %></td>
  	      <td><%=tl.getAuthorCountry() %></td>
  	      <td><a style="text-decoration:none" href="updateBook_setIsbn.action?isbn=<%=tl.getIsbn() %>">update</a></td>
  	      <td><a style="text-decoration:none" href="DeleteBook.action?isbn=<%=tl.getIsbn() %>&name=<%=tl.getAuthor() %>">delete</a></td>
  	      </tr>
  	    
  	    <%}
        %>
  	    
  	    </table><br>
  	  
  	  <a href="index.jsp" class="btn btn-large btn-block btn-info">返回主页</a>
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
