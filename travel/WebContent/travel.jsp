<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯" />
	<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯" />
	<title>畅游 - 洛阳旅游网</title>
	<link rel="Bookmark" href="favicon.ico">
	<link rel="Shortcut Icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
	<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
	<link rel="stylesheet" type="text/css" href="public/css/banner-style.css" media="screen" />
	<!-- jQuery Paradigm Slider  -->
	<link rel="stylesheet" type="text/css" href="public/css/settings.css" media="screen" />
	<!-- FONT IMPORT -->
	<!-- <link rel='stylesheet' type='text/css' href='public/css/css.css'> -->
	<link type="text/css" rel="stylesheet" href="public/css/scen-ban.css" />
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
							<li><a href="luoyang.jsp">魅力洛阳</a></li>
							<li class="active"><a href="travel.jsp">畅游</a></li>
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
		 
			<!-- 景点-->
			<div class="container-fluid travel-scen">
				<div class="row">
					<div class="col-md-12">
						<div class="container">
							<section class="cntr">
								<div class="cntr mt20">
									<ul class="pgwSlideshow">
										<li><img src="image/scen/402C245.jpg" alt="龙门"/></li>
										<li><img src="image/scen/xunyicao.jpg" alt="薰衣草庄园" height="300px"/></li>
										<li><img src="image/scen/xiaolangdi.jpg" alt="小浪底" height="300px"/></li>
										<li><img src="image/scen/suitang.jpg" alt="随堂" height="300px"/></li>
										<li><img src="image/scen/2c9661B.png" alt="关林" height="300px"/></li>
										<li><img src="image/scen/chongdugou.jpg" alt="重渡沟" height="300px"/></li>
										<li><img src="image/scen/jiguandong.jpg" alt="鸡冠洞" height="300px"/></li>
										<li><img src="image/scen/laojunshan.jpg" alt="老君山" height="300px"/></li>
										<li><img src="image/scen/lijinmen.jpg" alt="丽景门" height="300px"/></li>
										<li><img src="image/scen/longtanxia.jpg" alt="龙潭峡" height="300px"/></li>
									</ul>
								</div>
							</section>
							<!-- THE END OF THE BANNER EXMAPLE -->
						</div>
					</div>
				</div>
			</div>


			<img src="public/img/beauty.png" class="center-block" />

			<!-- 景点列表-->
			<div class="container scen-list">
				<div class="row">
					<div id="slide" class="col-md-12 col-sm-12 col-xs-12">
					</div>
				</div>
				 <p class="center-block text-center more">
					<a class="btn btn-primary load-more" role="button">加载更多 »</a>
				</p>
			</div>

			<!-- 特色-->
			<img src="public/img/feature.png" class="center-block" />

			<!-- 底部展示-->
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 top-banner">
						<img src="public/img/wrap_02.png" class="img-responsive" />
						<!--<img src="img/ydy_wenan_01.png" class="img-responsive"/>-->
					</div>
				</div>
			</div>
			<!-- 结束-->

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
		<!-- 整页结束-->
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/jquery-banner.min.js" type="text/javascript"></script>
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript"></script>
<script>
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 4; /*size*/
	
	/*首次加载*/
	getData(pageStart, pageSize);
	
	/*监听加载更多*/
	 	 $(".load-more").click(function(){
	 		//console.log("load more");
	    	counter ++;
			pageStart = counter * pageSize;		
			getData(pageStart, pageSize);
	    });
	function getData(offset,size){
		$.ajax({
			type: 'POST',
			url: 'ScenShow'+ '?' +'offset=' +offset + '&size=' + size, //这里offset,size无作用，仅方便调试
			dataType: 'json',
			success: function(scens){
				/* 每次读取数据个数 */
				sum=scens.length;
				/* 实现页面的拼接 */
				var result = '';
 				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum);			 
				/*******************************************/
				/*隐藏more*/
				if (sum <= 0){
					$(".load-more").hide();
				}else{
					$(".load-more").show();
				 $.each(scens,function(index,scen){
					 console.log(index,scen);
 
					result +='<div class="col-md-3 col-sm-6 col-xs-6 scen">'+
							'<div class="thumbnail"><h6 id="" class="travel travel-title">'+scen.scenname+'</h6>'+
							'<a href="scens.jsp?scenid='+scen.scenid+'" target="_blank" class="scens-a">'+
							'<img class="scen-img" src="'+scen.scenpic+'"/></a>'+
							'<h6 id="" class="travel travel-level">星级:'+ scen.scenlevel +'</h6>'+
							'<p id="" class="travel travel-add">位于:'+ scen.scenadd +'</p>'+
						'</div></div>';	
				 
				 });
				/* 将新读取的页面拼接到页面 */
				$('#slide').append(result);
				}
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>
</html>