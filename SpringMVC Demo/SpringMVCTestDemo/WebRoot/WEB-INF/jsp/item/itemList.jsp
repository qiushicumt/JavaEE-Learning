<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ItemsList WebPage</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<style type="text/css">
		.container {
			margin-top:20px;
		}
	</style>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<table class="table table-bordered table-hover">
			<tr>
				<th>商品ID</th>
				<th>商品名称</th>
				<th>商品价格</th>
				<th>商品详情</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${items }" var="item">
				<tr>
					<td>${item.itemId }</td>
					<td>${item.itemName }</td>
					<td>${item.itemPrice }</td>
					<td>${item.itemDetail }</td>
					<td><a href="#">增加</a> | <a href="#">修改</a> | <a href="#">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>