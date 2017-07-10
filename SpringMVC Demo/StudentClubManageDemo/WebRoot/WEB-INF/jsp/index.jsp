<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1" >
	<title>学生社团管理系统 - 首页</title>
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
	          		<a class="navbar-brand" href="${pageContext.request.contextPath }/index">学生社团管理系统</a>
	        	</div>
	        	<div id="navbar" class="collapse navbar-collapse">
		        	<ul class="nav navbar-nav">
			            <li class="active"><a href="${pageContext.request.contextPath }/index">主页</a></li>
			            <li><a href="#about">所有课程</a></li>
			            <li><a href="#contact">我的课程</a></li>
			            <li><a href="#">管理员登录</a></li>
		          	</ul>
		          	<form class="navbar-form navbar-right" id="login-form" action="#" method="post">
			            <div class="form-group">
			        		<input type="text" name="studentId" placeholder="学号" class="form-control">
			            </div>
			            <div class="form-group">
			        		<input type="password" name="studentPassword" placeholder="密码" class="form-control">
			            </div>
			            <button type="submit" class="btn btn-success">登录</button>
			        </form>
	        	</div><!--/.nav-collapse -->	
	      	</div>
		</nav>
		<div class="container content-container">
			<div class="starter-template">
				<div class="jumbotron">
					<h1>欢迎登录学生社团管理系统！</h1>
					<p>Welcome to students' club manage system!</p>
				</div>
				<div class="well well-sm">热门课程</div>
				<div class="container">
					<div class="row">
						<div class="col-md-4">
							<h2>油画</h2>
							<p>所属社团：山水画社</p>
							<p>书法基础A班：每周六下午15:30~17:00(1.5个周学时)，共开设10周；书法基础B班：每周六晚19:00~20:30(1.5个周学时)，共开设10周；书法提高班：每周日上午9:30~11:00(1.5个周学时)，共开设10周。</p>
							<p><a class="btn btn-default" role="button" href="#">View details »</a></p>
						</div>
						<div class="col-md-4">
							<h2>读书交流会</h2>
							<p>所属社团：书山有路书社</p>
							<p>一本好书，冲击着读者的心灵。一本好书，可以让颓废的心灵得到鼓励；让忧伤的心灵得到抚慰；让迷惘的心灵得到指引；让死去的心灵，得到气息…</p>
							<p>每周日晚上19:20~20:30(1个周学时)，共开设6周</p>
							<p><a class="btn btn-default" role="button" href="#">View details »</a></p>
						</div>
						<div class="col-md-4">
							<h2>吉他</h2>
							<p>所属社团：MayDay吉他社</p>
							<p>吉他基础A班：每周六下午15:00~17:00(2个周学时)，共开设10周；吉他基础B班：每周六晚19:00~21:00(2个周学时)，共开设10周；书法提高班：每周日上午9:00~11:00(2个周学时)，共开设12周。</p>
							<p><a class="btn btn-default" role="button" href="#">View details »</a></p>
						</div>
					</div>
					<hr />
					<footer>
						<p>&copy; 2017 苏州工业园区职业技术学院, Inc.</p>
					</footer>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>