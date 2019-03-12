<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯" />
<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯" />
<title>魅力洛阳  - 洛阳旅游网</title>
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>

	<body>

		<div class="page">
		 <!-- 头部导航 NAV-->
		<header class="">
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<!--LOGO-->
						<a class="navbar-brand" href="index.jsp"> 
							<img src="public/img/header_logo.png" width="75px" />
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">首页 <span
									class="sr-only">(current)</span></a></li>
							<li class="active"><a href="luoyang.jsp">魅力洛阳</a></li>
							<li><a href="travel.jsp">畅游</a></li>
							<li><a href="info.jsp">资讯</a></li>
						</ul>
						<!-- 全站搜索 -->

						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="search" class="form-control"
									placeholder="快速查询景区、资讯以及更多">
							</div>
							<button type="submit" class="btn btn-success">搜索</button>
						</form>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="server.jsp">服务</a></li>

						</ul>
						&nbsp;
						<!-- 天气预报插件-->
						<iframe class="nav navbar-nav navbar-right" width="190"
							scrolling="no" height="49" frameborder="0"
							allowtransparency="true"
							src="http://i.tianqi.com/index.php?c=code&id=12&bdc=%23&icon=1&py=luoyang&num=5"></iframe>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- 导航结束 -->
		
			<div class="introduce">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<img src="public/img/describe.png" class="center-block" />
						</div>
						<div class="col-md-12">
							<div class="col-md-5 col-sm-5">
								<img src="public/img/int2173.png" class="img-responsive" />
							</div>
							<div class="col-md-7 col-sm-7">

								<div class="intro-text">
									<span class="luoyang">洛阳</span> 位于河南省西部、黄河南岸，由周公营建，建于公元前12世纪，是八大古都和国务院首批公布的历史文化名城之一，是中国历史上唯一被命名为“神都”的城市，洛阳因地处古洛水之北岸而得名，以洛阳为中心的河洛地区是华夏文明的重要发祥地。 从中国第一个王朝夏朝开始、先后有商、西周、东周、东汉、曹魏、西晋、北魏、隋、唐、后梁、后唐、后晋“十三个”朝代在此建都有105位帝王定鼎九州，是华夏民族的精神故乡，是“最早的中国” 。
									<p class="feature">洛阳是中国历史上唯一被命名为“神都”的城市，是中国优秀旅游城市和“感动世界的中国品牌城市”。洛阳因地处古洛水之北岸而得名，以洛阳为中心的河洛地区是华夏文明的重要发祥地。</p>
								</div>
							</div>
						</div>

						<img src="public/img/food.png" class="center-block" />
						<div class="col-md-12 foods text-center">
							<img alt="" src="public/img/shuixi.jpg" class="img-rounded col-md-5 col-md-offset-1" title="洛阳水席" style="margin-bottom: 20px;">
							<img alt="" src="public/img/niuroutang.png" class="img-rounded col-md-5" title="牛肉汤">
						</div>

						<img src="public/img/play.png" class="center-block" />
						<div class="col-md-12">

							<div id="slider">
								<ul class="slides clearfix">
									<li><img class="responsive" src="public/img/40239A7.png"></li>
									<li><img class="responsive" src="public/img/402F9CE.png"></li>
									<li><img class="responsive" src="public/img/smdABFD.png"></li>
									<li><img class="responsive" src="public/img/pms9C98.png"></li>
								</ul>
								<ul class="controls">
									<li><img src="public/img/prev.png" alt="previous"></li>
									<li><img src="public/img/next.png" alt="next"></li>
								</ul>
								<ul class="pagination">
									<li class="active"></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container-fluid map">
				<div class="row">
					<div class="col-md-12">
						<img src="public/img/header_logo.png" class="center-block" />
						<iframe src="map.html" width="100%" height="500px" frameborder="no" scrolling="no"></iframe>						
						<p class="text-center">在地图上添加全景控件，点击全景控件进入全景图</p>
					</div>
				</div>
			</div>

			<div class="container-fluid video ">
				<div class="row ">
						<div class="col-md-12">
							<img src="public/img/video.png" class="center-block" />
						</div>
					<div class="col-md-12">
						 
							<video width="1000 " height="" class="col-sm-8 col-xs-8" controls preload="auto">
								<source src="public/video/myvideo.mp4 " type="video/mp4"/>
								 <p>Your browser does not support the video tag.</p>
							</video>
					 
					</div>
				</div>
			</div>

			<!-- /.page -->

		<!-- 底部版权声明 -->
		<%@ include file="include/footer.jsp" %>

			<!-- 返回顶部-->
			<div class="back-top">
				<a href="javascript:;" class="top-button">
					<img src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
				</a>
			</div>
			<!-- 返回顶部END-->

		</div>

	</body>

	<!-- Bootstrap core JavaScript-->
	<script src="public/js/jquery-3.1.1.js " type="text/javascript " charset="utf-8 "></script>
	<script src="public/js/bootstrap.js " type="text/javascript " charset="utf-8 "></script>
	<script src="public/js/easySlider.js "></script>
	<script type="text/javascript ">
		$(function() {
			 
			$("#slider ").easySlider({
				slideSpeed: 500,
				paginationSpacing: "15px ",
				paginationDiameter: "12px ",
				paginationPositionFromBottom: "20px ",
				slidesClass: ".slides ",
				controlsClass: ".controls ",
				paginationClass: ".pagination "
			});
		});
	</script>
	<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>
</html>
