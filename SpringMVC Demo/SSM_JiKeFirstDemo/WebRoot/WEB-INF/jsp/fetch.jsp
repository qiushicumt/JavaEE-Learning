<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
 	<title>极客学院SpringMVC</title>

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
          		<a class="navbar-brand" href="${pageContext.request.contextPath }/index">Home</a>
        	</div>
        	<div id="navbar" class="collapse navbar-collapse">
	        	<ul class="nav navbar-nav">
		            <li class="active"><a href="${pageContext.request.contextPath }/ipIndex">IPIndex</a></li>
		            <li><a href="${pageContext.request.contextPath }/fetch">API接口</a></li>
		            <li><a href="${pageContext.request.contextPath }/help">帮助中心</a></li>
	          	</ul>
        	</div><!--/.nav-collapse -->
      	</div>
    </nav>
	<div class="container content-container">
		<div id="post-2" class="post-2 page type-page status-publish hentry">
			<p>
				<a href="${pageContext.request.contextPath }/index">首页</a> &gt;&gt;
				<a href="${pageContext.request.contextPath }/fetch">生成API提取接口</a>
			</p>
			<hr>
			<div class="entry entry-content">
				<form id="fetchForm" target="_blank" method="get" class="largeinput form-horizontal" accept-charset="UTF-8">
					
					<div class="form-group row">
						<label class="col-xs-1 control-label" for="fetch-num">提取数量</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" name="fetchNum" id="fetch-num" placeholder="提取数量" />
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-xs-1 control-label" for="the-country">所在国家</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" name="theCountry" id="the-country" placeholder="国家，比如中国" />
						</div>
					</div>
					
					<div class="form-group row">
						<label class="col-xs-1 control-label" for="ip-operator">IP运营商</label>
						<div class="col-xs-3">
							<select class="form-control" id="ip-operator" name="ipOperator">
  								<option>不限</option>
							  	<option>电信</option>
							  	<option>网通(联通)</option>
							  	<option>移动</option>
							  	<option>铁通</option>
							</select>
						</div>
					</div>
					
				    <div class="form-group">
				    	<span>&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-info" href="javascript:void(0);">提取IP</a></span>&nbsp;&nbsp;
				    	<a href="http://www.goubanjia.com/help/#q_wd" target="_blank">我提取的代理都能用吗，能用多久？</a>
				    </div>
				</form>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="js/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>