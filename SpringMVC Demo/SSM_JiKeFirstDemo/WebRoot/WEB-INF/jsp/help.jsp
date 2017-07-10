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
 	<title>极客学院SpringMVC帮助页</title>

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
			<div class="entry entry-content">
				<div class="questions">
					<div class="line">
						<h3>1. 在哪里购买IP？我想先测试一下怎么办？</h3>
						<div class="answer jumbotron jumbotron-new">您可以购买测试套餐试用，支付宝在线支付。 
							<a href="http://www.goubanjia.com/buy/" target="_blank">去购买>></a>
						</div>
					</div>
					<div class="line" id="q_wd">
						<h3>2. 代理IP稳定吗？能用多久？</h3>
						<div class="answer jumbotron jumbotron-new">
						我们提供的代理ip实效性较强，有效期在<span class="warn">几分钟到几个小时</span>不等。<br>
						可适用于隐藏网页IP，一般常用于空间留言、论坛顶帖、发帖、帐号注册、刷单、刷网站流量、网赚任务等，最适合需要频繁更换IP的客户！
						</div>
					</div>	
					<div class="line">
						<h3>3. 一天有多少量？我购买后提取数量有限制吗？</h3>
						<div class="answer jumbotron jumbotron-new">
							目前每天累计可用ip大约 <span class="warn"> 30万个 </span>。订单有效期内是<span class="warn"> 不限量提取 </span>的。
						</div>
					</div>
					<div class="line">
						<h3>4. 我提取的代理都能用吗？</h3>
						<div class="answer jumbotron jumbotron-new">
							我们保证您提取的代理都是我们<span class="warn"> 30分钟内  </span>检测可用的，提取后请尽快使用。
						</div>
					</div>
					<div class="line" id="q_num">
						<h3>5. 一次提取多少代理合适？</h3>
						<div class="answer jumbotron jumbotron-new">
						代理实效性很强，当时提取可用的代理一会儿可能失效。<br>
						我们推荐您分多次提取，<span class="warn"> 一次只提取本次需要的数量  </span>，取完马上使用。<br>
						例如根据您的业务情况，10分钟大约需要用到300个代理，您就每10分钟提取一次，一次提取300个。
						</div>
					</div>
					<div class="line">
						<h3>6. 你们都有哪些地区的代理？</h3>
						<div class="answer jumbotron jumbotron-new">
							我们实时可用的代理覆盖<span class="warn"> 超过60个国家 </span>，中国国内覆盖<span class="warn"> 超过26个省 </span>。<a title="代理IP地区分布" href="http://www.goubanjia.com/info/#dist_country" target="_blank">查看地区实时分布>></a>
						</div>
					</div>
					<div class="line">
						<h3>7. 你们有https代理吗？</h3>
						<div class="answer jumbotron jumbotron-new">
							有的，请在提取代理时按<span class="warn"> https </span>筛选。<a title="提取代理IP" href="http://www.goubanjia.com/fetch/" target="_blank">去提取>></a>
						</div>
					</div>
					<div class="line">
						<h3>8. 如何只提取国内代理？</h3>
						<div class="answer jumbotron jumbotron-new">
							筛选条件中的“所在地区” 填写 <span class="warn"> 中国 </span>。<a title="提取代理IP" href="http://www.goubanjia.com/fetch/" target="_blank">去提取>></a>
						</div>
					</div>	
					<div class="line">
						<h3>9. 如何只提取国外代理？</h3>
						<div class="answer jumbotron jumbotron-new">
							筛选条件中的“排除地区” 填写 <span class="warn"> 中国 </span>。<a title="提取代理IP" href="http://www.goubanjia.com/fetch/" target="_blank">去提取>></a>
						</div>
					</div>
					<div class="line">
						<h3>10. 你们代理都是高匿名的吗？</h3>
						<div class="answer jumbotron jumbotron-new">
							不是，HTTP代理按匿名度可分为透明代理、匿名代理和高度匿名代理，我们实时可用的代理中3种类型都包含。<a title="代理IP匿名度分布" href="http://www.goubanjia.com/info/#dist_anonymity" target="_blank">查看匿名度实时分布>></a>
						</div>
					</div>
					<div class="line">
						<h3>11. 为什么我的订单被封禁？</h3>
						<div class="answer jumbotron jumbotron-new">
							您很可能因对API接口<span class="warn"> 调用过于频繁 </span>而被判定为恶意请求。<br>
							API接口调用频率限制为<span class="warn">最多1秒钟调用5次 </span>，请遵循如下调用原则：<br>
							1. 两次API调用间隔调至 1秒 以上<br>
							2. 绝大多数业务每分钟或每几分钟调用一次即可满足需要<br>
							3. 一次调用只取本次调用需要的代理 ip 数量，取完马上使用。一次取太多到用时可能失效<br>
							4. 请设置合理的筛选条件，准确筛选您要的代理ip<br>
							（调用修正后订单会在<span class="warn"> 1分钟内 </span>自动解封）
						</div>
					</div>	
					<div class="line" id="q_anonymity">
						<h3>12. 什么是高匿名、匿名和透明代理？它们有什么区别？</h3>
						<div class="answer jumbotron jumbotron-new">
							HTTP代理按匿名度可分为透明代理、匿名代理和高度匿名代理。<br><br>
							<span class="warn">1. 使用透明代理，对方服务器可以知道你使用了代理，并且也知道你的真实IP。 </span><br>
							透明代理访问对方服务器所带的HTTP头信息如下：<br>
							REMOTE_ADDR = 代理服务器IP<br>
							HTTP_VIA = 代理服务器IP<br>
							HTTP_X_FORWARDED_FOR = 你的真实IP<br>
							透明代理还是将你的真实IP发送给了对方服务器，因此无法达到隐藏身份的目的。<br><br>
							<span class="warn">2. 使用匿名代理，对方服务器可以知道你使用了代理，但不知道你的真实IP。</span><br>
							匿名代理访问对方服务器所带的HTTP头信息如下：<br>
							REMOTE_ADDR = 代理服务器IP<br>
							HTTP_VIA = 代理服务器IP<br>
							HTTP_X_FORWARDED_FOR = 代理服务器IP<br>
							匿名代理隐藏了你的真实IP，但是向访问对象透露了你是使用代理服务器访问他们的。<br><br>
							<span class="warn">3. 使用高匿名代理，对方服务器不知道你使用了代理，更不知道你的真实IP。 </span><br>
							高匿名代理访问对方服务器所带的HTTP头信息如下：<br>
							REMOTE_ADDR = 代理服务器IP<br>
							HTTP_VIA 不显示<br>
							HTTP_X_FORWARDED_FOR 不显示<br>
							高匿名代理隐藏了你的真实IP，同时访问对象也不知道你使用了代理，因此隐蔽度最高。			
						</div>
					</div>	
					<div class="line" id="q_speed">
						<h3>13. 什么是代理的响应速度？</h3>
						<div class="answer jumbotron jumbotron-new">
							响应速度是指我们用这个代理去访问<span class="warn">百度首页</span>所需要的时间。<br>
							我们给出的响应速度是中国测速服务器的测试数据，仅供参考。<br>
							响应速度根据你机器所在的地理位置不同而有差异。<br>
						</div>
					</div>
					<div class="line">
						<h3>14. 什么是https代理？</h3>
						<div class="answer jumbotron jumbotron-new">
							https代理是指通过这个代理可以访问https网站。
						</div>
					</div>	
					<div class="line" id="q_lasttime">
						<h3>15. 什么是代理的最后检测时间？</h3>
						<div class="answer jumbotron jumbotron-new">
							最后一次测试代理IP可用的时间。<br>
						</div>
					</div>
					<div class="line" id="q_live">
						<h3>16. 什么是代理的存活率？</h3>
						<div class="answer jumbotron jumbotron-new">
							存活率是指代理IP从发现到现在时间的存货周期，存活率越大代表代理IP越稳定。<br>
						</div>
					</div>
					<div class="line" id="q_live">
						<h3>17. 普通代理高级版和基础版有什么区别？</h3>
						<div class="answer jumbotron jumbotron-new">
							基础版和高级版来源于同一个IP库。<br>
							区别在于基础版限制请求次数（1秒请求一次），不可以在软件中使用接口，不可以使用多线程。<br>
							高级版没有任何限制。<br>
						</div>
					</div>
					<div class="line" id="q_live">
						<h3>18. 什么动态代理IP？</h3>
						<div class="answer jumbotron jumbotron-new">
							动态代理IP，又称为短效代理IP，是我司机房自营IP，IP有效时长分为1分钟、2分钟、5分钟三种。<br>
							在有效时长内可以任意使用IP，超过有效时长，IP就失效了。<br>
							动态代理IP以API接口形式获取，获取后需要尽快使用。<br>
							动态代理IP最适用爬虫项目。<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="js/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>