<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" >
	<meta name="viewport" content="width=device-width, initial-scale=1" >
	<title>用户列表</title>
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
	    		<div class="starter-template">
		    		<h2>用户列表</h2>
		    		<hr>
		    		<form action="#" id="submit-userlist-form" method="POST">
		    			<div>
		    				<a class="btn btn-info" href="${pageContext.request.contextPath }/ssm/users/addNewUser">新增用户</a>
		    				<a class="btn btn-warning" href="javascript:;" onclick="deleteBatchUsers()">批量删除用户</a>
		    			</div>
		    			<br>
		    			<div class="panel panel-default">
	  						<div class="panel-heading">
	    						<h3 class="panel-title">用户信息列表</h3>
	  						</div>
	  						<div class="panel-body">
	    						<table class="table table-hover">
		    						<tr>
		    							<td>选择</td>
		    							<td>序列</td>
		    							<td>用户名</td>
		    							<td>用户姓名</td>
		    							<td>操作</td>
		    						</tr>
		    						<c:set var="index" value="0" />
		    						<c:forEach items="${users }" var="user">
		    							<c:set var="index" value="${index+1}" />
		    							<tr>
		    								<td>
			    								<input type="checkbox" name="userids" value="${user.userId }">
			    							</td>
			    							<td>
			    								${index}
			    							</td>
			    							<td>${user.userName }</td>
			    							<td>${user.lastName }${user.firstName }</td>
			    							<td>
			    								<a class="btn btn-warning" href="${pageContext.request.contextPath }/ssm/users/editUser?userid=${user.userId}">修改</a>
			    								<a class="btn btn-danger" href="${pageContext.request.contextPath }/ssm/users/deleteUser?userid=${user.userId }">删除</a>
			    							</td>
		    							</tr>
		    						</c:forEach>
		    					</table>
	  						</div>
						</div>
		    		</form>
		    	</div>
	    	</div>
	    </div>
	</div>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script>
		function deleteBatchUsers() {
			document.getElementById("submit-userlist-form").action="${pageContext.request.contextPath }/ssm/users/deleteUsers";
			document.getElementById("submit-userlist-form").submit();
		}
	</script>
</body>
</html>