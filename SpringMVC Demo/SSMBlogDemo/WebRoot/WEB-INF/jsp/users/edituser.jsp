<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" >
	<meta name="viewport" content="width=device-width, initial-scale=1" >
	<title>编辑用户</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/baseStyle.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
	          		<a class="navbar-brand" href="${pageContext.request.contextPath }/index">博客系统</a>
	        	</div>
	        	<div id="navbar" class="collapse navbar-collapse">
		        	<ul class="nav navbar-nav">
			            <li class="active"><a href="${pageContext.request.contextPath }/ssm/blogs/queryBlogs">博客</a></li>
			            <li><a href="${pageContext.request.contextPath }/ssm/users/queryUsers">用户</a></li>
			            <li><a href="#about">About</a></li>
		          	</ul>
	        	</div><!--/.nav-collapse -->
	      	</div>
	    </nav>
	    <div class="container content-container">
	    	<div class="jumbotron jumbotron-padding">
	    		<h2>编辑用户</h2>
	    		<hr>
	    		<form class="form-horizontal" id="submit-useredit-form" action="${pageContext.request.contextPath }/ssm/users/updateUser" method="POST">
	    			<input type="hidden" name="userCustom.userId" value="${user.userId }">
	    			<div class="form-group">
	    				<label class="control-label col-xs-1" for="user-name">UserName:</label>
	    				<div class="col-xs-5">
	    					<input type="text" name="userCustom.userName" id="user-name" class="form-control" value="${user.userName }" >
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<label class="control-label col-xs-1" for="user-password">Password:</label>
	    				<div class="col-xs-5">
	    					<input type="password" name="userCustom.userPassword" id="user-password" class="form-control" value="${user.userPassword }">
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<label class="control-label col-xs-1" for="first-name">FirstName:</label>
	    				<div class="col-xs-5" >
	    					<input type="text" name="userCustom.firstName" id="first-name" class="form-control" value="${user.firstName }">
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<label class="control-label col-xs-1" for="last-name">LastName:</label>
	    				<div class="col-xs-5" >
	    					<input type="text" name="userCustom.lastName" id="last-name" class="form-control" value="${user.lastName }">
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<div class="col-xs-4">
	    					<div class="col-xs-4"></div>
	    					<input type="submit" value="保存" class="btn btn-success">
	    					<input type="reset" value="重置" class="btn">
	    				</div>
	    			</div>
	    		</form>
	    	</div>
	    </div>
	</div>
</body>
</html>