<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Login</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/baseStyle.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="wrappage">
		<div class="container content-container">
			<form action="${pageContext.request.contextPath }/ssm/login" method="post" class="form-horizontal">
				<div class="form-group">
					<label for="userName" class="col-xs-1 control-label">用户名：</label>
					<div class="col-xs-5">
						<input type="text" class="form-control" name="username" id="userName" />
					</div>
				</div>
				<div class="form-group">
					<label for="passWord" class="col-xs-1 control-label">密&nbsp;码：</label>
					<div class="col-xs-5">
						<input type="password" class="form-control" name="password" id="passWord" />
					</div>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-success" value="登录" />
					<input type="reset" class="btn btn-success" value="重置" />
				</div>
			</form>
		</div>
	</div>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
</body>
</html>