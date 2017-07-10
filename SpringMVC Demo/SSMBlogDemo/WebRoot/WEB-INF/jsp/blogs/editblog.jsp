<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>博客信息编辑</title>
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
	    	<div class="jumbotron">
	    		<h2>编辑博客信息</h2>
	    		<br>
	    		<form class="form-horizontal" action="${pageContext.request.contextPath }/ssm/blogs/updateBlog" method="POST">
	    			<input type="hidden" name="blogCustom.blogId" value="${blog.blogId }">
	    			<div class="form-group">
	    				<label class="col-xs-1 control-label" for="blog_title">博客标题</label>
	    				<div class="col-xs-5">
	    					<input type="text" class="form-control" name="blogCustom.blogTitle" id="blog_title" value="${blog.blogTitle }">
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<label class="col-xs-1 control-label" for="blog_content">博客内容</label>
	    				<div class="col-xs-5">
	    					<textarea rows="10" cols="6" class="form-control" name="blogCustom.blogContent" id="blog_content">${blog.blogContent }</textarea>
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<label class="col-xs-1 control-label" for="blog_user">博客作者</label>
	    				<div class="col-xs-5">
	    					<input type="text" class="form-control" name="blogCustom.user.lastName" id="blog_user" value="${blog.user.lastName }${blog.user.firstName}" >
	    				</div>
	    			</div>
	    			<div class="form-group">
	    				<input type="submit" class="btn btn-success" value="保存">
	    				<input type="reset" class="btn btn-warning" value="重置">
	    			</div>
	    		</form>
	    	</div>
	    </div>
	</div>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
</body>
</html>