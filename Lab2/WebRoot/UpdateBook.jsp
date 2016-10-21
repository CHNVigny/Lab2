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
    
    <title>Update</title>
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
  <!-- String isbn,int authorid, String publisher, String publishdate, String price -->
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
  </div>
    <div class="span3" align="center">
      <form action="updateBook.action"> 
        
          <table id="table-2">
            
            <tr>
              
              
              <td><div align="center">title</div></td> 
              <td><div align="center">publisher</div></td> 
              <td><div align="center">publishdate</div></td> 
              <td><div align="center">price</div></td> 
              <td><div align="center">author</div></td> 
              <td><div align="center">author age</div></td> 
              <td><div align="center">author country</div></td> 
              </tr>
            <%
			String isbn=request.getParameter("isbn");
			BookInformation bi = new BookInformation();
			book tl = new book();
			tl=bi.bookInformation(isbn); 
		%>
            <tr>
              
              
              <td ><div style="width:135px;"><%=tl.getTitle() %></div></td> 
              <td><input style="width:120px;" class="span3" type=text name="publisher" value="<%=tl.getPublisher() %>"></td> 
              <td><input style="width:120px;" class="span3" type=text name="publishdate" value="<%=tl.getPublishdate() %>"></td> 
              <td><input style="width:120px;" class="span3" type=text name="price" value="<%=tl.getPrice() %>"></td> 
              <td><input style="width:120px;" class="span3" type=text name="name" value="<%=tl.getAuthor() %>"></td> 
              <td><input style="width:120px;" class="span3" type=text name="age" value="<%=tl.getAuthorAge() %>"></td> 
              <td><input style="width:120px;" class="span3" type=text name="country" value="<%=tl.getAuthorCountry() %>"></td>
              <td><input style="width:120px;" class="span3" type=hidden name="title" value="<%=tl.getTitle() %>"></td> 
              <td><input style="width:120px;" class="span3" type=hidden name="isbn" value="<%=tl.getIsbn() %>"></td>
              <td><input type=submit value="提交" class="btn btn-warning btn-large btn-block" >
                
              </tr>
            
            
          </table>
        
      </form>
      <div align="center"></div>
    </div>
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
  </body>
</html>
