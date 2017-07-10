<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>SpringMVC MyBatis First Web</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css" >
	<link rel="stylesheet" href="../../css/baseStyle.css" >
</head>
<body>
	<div class="wrappage">
		<nav class="navbar navbar-inverse navbar-fixed-top">
	    	<div class="container">
	    		<div class="navbar-header">
	    			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		    			<span class="sr-only">Toggle navigation</span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
	          		</button>
	          		<a class="navbar-brand" href="${pageContext.request.contextPath }/index">SpringMVC</a>
	        	</div>
	        	<div id="navbar" class="collapse navbar-collapse">
		        	<ul class="nav navbar-nav">
			            <li class="active"><a href="${pageContext.request.contextPath }/ssm/items/queryItems">Items</a></li>
			            <li><a href="#about">About</a></li>
			            <li><a href="#contact">Contact</a></li>
		          	</ul>
	        	</div><!--/.nav-collapse -->
	      	</div>
	    </nav>						
	    <div class="container theme-showcase content-container" role="main">
      		<div class="jumbotron">
        		<h1>Items List Page</h1>        		
        		<h3>数据更新成功！</h3>
        		<p><a href="${pageContext.request.contextPath }/ssm/items/queryItems">返回</a></p>
      		</div>
	    </div>
	</div>
	<script type="text/javascript" src="../../js/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
</body>
</html>