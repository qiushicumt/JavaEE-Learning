<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>json数据传递</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/baseStyle.css">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>SpringMVC的Json数据传输</h2>
  			<p>...</p>
			<p><a class="btn btn-primary btn-lg" href="#" role="button" onclick="requestJSON()">输入json/输出json</a></p>
			<p><a class="btn btn-primary btn-lg" href="#" role="button" onclick="responseJSON()">输入key-value/输出json</a></p>
		</div>
	</div>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript">
	//	请求json数据，输出json数据
	function requestJSON() {
		
		$.ajax({
			//	type:设置传输方式为get还是post
			type:'post',
			//	url:设置传输的目标url地址
			url:'${pageContext.request.contextPath}/json/jsonRequest',
			
			dataType:"json", 
			//	contentType:设置传输的数据格式类型
			contentType:'application/json;charset=utf-8',
			//	传输的json数据
			// data:'{"itemName":"惠普(HP)暗影精灵II代Pro","itemPrice":"5799.00","itemDetail":"i5-7300HQ 8G 128GSSD+1T GTX1050Ti 4G独显 IPS FHD"}',
			
			data:'{"itemName":"惠普(HP)暗影精灵II代Pro","itemPrice":5799.00,"itemDetail":"i5-7300HQ 8G 128GSSD+1T GTX1050Ti 4G独显 IPS FHD"}',
			
			//	传输成功后，执行function函数
			success:function(data) {
				alert(data);
			}
		});
	}
	//	请求key-value数据，输出json数据
	function responseJSON() {
		$.ajax({
			type:'post',
			url:'${pageContext.request.contextPath}/json/jsonResponse',
			//	此处，在传输key-value数据时，不需要设置这个contentType
			//	contentType:'application/json;charset=utf-8'
			data:'itemName=HP346&itemPrice=2999.00',
			success:function(data) {
				alert(data.itemPrice);
			}
		});
	}
	</script>
</body>
</html>