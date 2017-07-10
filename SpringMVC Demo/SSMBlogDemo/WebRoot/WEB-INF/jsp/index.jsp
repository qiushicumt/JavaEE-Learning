<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
 	<title>SpringMVC Mybatis Demo 首页</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
 	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/baseStyle.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
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
		<div class="starter-template">
			<h1>这里是SpringMVC博客系统</h1>
		</div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="js/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>