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
        		<hr>
        		<form class="form-horizontal" id="submitForm" action="${ pageContext.request.contextPath }/ssm/items/queryItems" method="post">
        			<div class="form-group">
        				<label for="item-name" class="col-xs-1 control-label">商品名称</label>
        				<div class="col-xs-3">
        					<input type="text" id="item-name" class="form-control" name="itemCustom.itemName" placeholder="输入商品名称进行查询" >	
        				</div> 
        				<div class="col-xs-3">
        					<button type="submit" class="btn btn-default">查询</button>
        					<button type="reset" class="btn btn-info" >重置</button>
        				</div>       				
        			</div>
        			<div class="form-group">
        				<div class="col-xs-2">
        					<input type="button" class="form-control btn btn-success" onclick="addItem()" value="添加商品">
        				</div>  
        				<div class="col-xs-6"></div>
        				<div class="col-xs-2" >
        					<input type="button" class="form-control btn btn-info" onclick="editBatchItems()" value="批量修改">
        				</div>
        				<div class="col-xs-2">
        					<input type="button" class="form-control btn btn-warning" onclick="deleteItem()" value="批量删除">
        				</div>        				
        			</div>
        		<br>    
        		<div class="panel panel-default">
  					<!-- Default panel contents -->
  					<div class="panel-heading">商品列表</div>
        				
        			<!-- 商品列表 -->
	        		<table class="table table-hover">
	        			<tr>
	        				<td>选择</td>
	        				<td>商品ID</td>
	        				<td>商品名称</td>
	        				<td>商品价格</td>
	        				<td>商品详情</td>
	        				<td>操作</td>
	        			</tr>
	        			<c:forEach items="${items }" var="item">
							<tr>
								<td><input type="checkbox" name="itemIds" value="${item.itemId }" ></td>
								<td>${item.itemId }</td>
								<td>${item.itemName }</td>
								<td>${item.itemPrice }</td>
								<td>${item.itemDetail }</td>
								<td>
									<a href="${pageContext.request.contextPath }/ssm/items/editItemView?id=${item.itemId }">修改</a> | 
									<a href="${pageContext.request.contextPath }/ssm/items/deleteItem?id=${item.itemId}">删除</a>
								</td>
							</tr>
						</c:forEach>
	        		</table>
	        	</div>
        		</form> 
      		</div>
	    </div>
	</div>
	<script type="text/javascript" src="../../js/jquery.min.js"></script>
	<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
	<script>
		function deleteItem() {
			document.getElementById("submitForm").action="${pageContext.request.contextPath }/ssm/items/deleteBatchItems";
			document.getElementById("submitForm").submit();
		}
		function addItem() {
			document.getElementById("submitForm").action="${pageContext.request.contextPath }/ssm/items/addItem";
			document.getElementById("submitForm").submit();
		}
		function editBatchItems() {
			document.getElementById("submitForm").action="${pageContext.request.contextPath}/ssm/items/editItems";
			document.getElementById("submitForm").submit();
		}
	</script>
</body>
</html>