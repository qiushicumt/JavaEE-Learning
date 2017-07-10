<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="device-width, initial-scale=1">
	<title>Item Edit Page</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css" >
	<link rel="stylesheet" href="../../css/baseStyle.css" >
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
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
			<form id="itemForm" class="form-horizontal" action="${pageContext.request.contextPath }/ssm/items/editItemSubmit" method="post" enctype="multipart/form-data">
				<input type="hidden" name="itemId" value="${item.itemId }"> 
				<div class="form-group form-group-lg">
					<label class="col-sm-2 control-label" for="itemname">商品名称</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="itemname" name="itemName" value="${item.itemName }">
					</div>
				</div>
				<div class="form-group form-group-lg">
					<label class="col-sm-2 control-label" for="itemprice">商品价格</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="itemprice" name="itemPrice" value="${item.itemPrice }" >
					</div>
				</div>
				<div class="form-group form-group-lg">
					<label class="col-sm-2 control-label" for="itemdetail">商品详情 </label>
					<div class="col-sm-10">
						<textarea class="form-control" id="itemdetail" rows=4 name="itemDetail">
						${item.itemDetail }
						</textarea>
					</div>
				</div>
				<div class="form-group form-group-lg">
					<label class="col-sm-2 control-label" for="itempic">商品图片</label>
					<div class="col-sm-10">
						<!--
						<c:if test="${item.itemPic != null} ">
							<img alt="商品图片" src="/images/${item.itemPic }" width="150" height="150">
							<br>
						</c:if>
						-->
						<c:if test="${item.itemPic != null }">
							<img alt="商品图片" src="/images/${item.itemPic }" width="150" height="150">
							<br>
						</c:if>
						<input type="file" id="itempic" name="item_image">						
					</div>
				</div>
				<div class="form-group form-group-lg">
					<div class="col-sm-2"></div>
					<input type="submit" class="col-sm-1 btn btn-success" value="保存"> 
					<input type="reset" class="col-sm-1 btn btn-warning" value="重置">
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript" src="../../js/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
</body>
</html>