<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯"/>
	<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯"/>
	<title>首页  - 洛阳旅游网</title>
	<link rel="Bookmark" href="favicon.ico">
	<link rel="Shortcut Icon" href="favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css"/>
	<link rel="stylesheet" type="text/css" href="public/css/travel/index.css"/>
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
							<span class="sr-only">Toggle navigation</span><span
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
							<li class="active"><a href="index.jsp">首页 <span
									class="sr-only">(current)</span></a></li>
							<li><a href="luoyang.jsp">魅力洛阳</a></li>
							<li><a href="travel.jsp">畅游</a></li>
							<li><a href="info.jsp">资讯</a></li>
						</ul>
						
						<!-- 全站搜索 -->
						<form class="navbar-form navbar-left" role="search" action="http://zhannei.baidu.com/cse/search" method="get" target="_blank" class="bdcs-search-form" autocomplete="off" id="bdcs-search-form">
							<div class="form-group">
								<input type="hidden" name="s" value="4106996640374743104">
								<input type="hidden" name="entry" value="1">
								<input type="search" name="q" class="bdcs-search-form-input form-control" id="bdcs-search-form-input" placeholder="请输入关键词" autocomplete="off" style="height: 34px; line-height: 34px;">					 
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
							src="http://i.tianqi.com/index.php?c=code&id=12&bdc=%23&icon=1&py=luoyang&num=5">
						</iframe>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- 导航结束 -->
		
		<!-- 图片轮播 BANNER-->
		<div id="myCarousel" class="carousel slide banner"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"
					onclick="linkGo(0,this)"></li>
				<li data-target="#myCarousel" data-slide-to="1" onclick="linkGo(1,this)"></li>
				<li data-target="#myCarousel" data-slide-to="2" onclick="linkGo(2,this)"></li>
				<li data-target="#myCarousel" data-slide-to="3" onclick="linkGo(3,this)"></li>
				<li data-target="#myCarousel" data-slide-to="4" onclick="linkGo(4,this)"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<a href="scens.jsp?scenid=5" target="_blank" id="banner-a"> 
					<img class="first-slide" id="banner-img" src="image/banner/1.jpg" alt="" title="">
					</a>
				</div>
			</div>

			<!-- 上一页-->
			<a class="left carousel-control" id="getPrev" href="#myCarousel"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<!-- 下一页-->
			<a class="right carousel-control" id="getNext" href="#myCarousel"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!-- /.carousel -->
		<!-- 轮播图结束 -->

		<img src="public/img/sea-hot.png" class="center-block sea-hot" />
		<!-- 景点展示-->
		<div class="container scens">
			<div class="row scen-list">			 
				
		  <%/*
				  <div class="col-sm-6 col-md-3 scen">
					<div class="thumbnail">
						<a href="" class="scens-a"> <img class="scen-img" src="image/scen/laojunshan.jpg" alt="">
						</a>
					<h3 class="scen-title">白云山</h3>
					</div>
				</div>  	  
		  */ %> 
				
			</div>

			<p class="center-block text-center more">
				<a class="btn btn-default" href="travel.jsp" target="_blank" role="button">查看更多 »</a>
			</p>

			<hr />
		</div>
		<!-- 景点展示结束-->

		<img src="public/img/hot-info.png" class="center-block sea-hot" />
		<!-- 资讯展示 -->
		<div class="info-show">
			<div class="container">
				<!-- Example row of columns -->
				<div class="row info-list">
				
				</div>		 
				<p class="center-block text-center more">
					<a class="btn btn-default" href="info.jsp" target="_blank" role="button">查看更多 »</a>
				</p>
				<hr>
			</div>

		</div>
		<!-- 资讯展示结束INFO-->

		<img src="public/img/play.png" class="center-block sea-hot" />
		<!-- 洛阳玩乐-->
		<div class="more-scen">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="more-site col-md-6 center-block">
							<blockquote class="">
								<h4>相关站点</h4>
							</blockquote>
							<div class="sites">
								<a href="https://baike.baidu.com/" target="_blank"><img src="public/img/bai4C20.png" alt=""/></a> 
								<a href="http://www.lvmama.com/" target="_blank"><img src="public/img/lvm8E67.png" alt=""/></a> 
								<a href="http://www.ctrip.com/" target="_blank"><img src="public/img/xieE7A6.png" alt=""/></a>
								<a href="https://www.qunar.com/" target="_blank"><img src="public/img/qun3B35.png" alt=""/></a>
							</div>
						</div>

						<div class="col-md-6 arround center-block">
							<blockquote class="">
								<h4>周边景点</h4>
							</blockquote>
							<ul class="arround-scen">
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="http://www.hnsxly.com.cn/" target="_blank" class="ts">嵩县</a>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="http://www.lclvyou.com/" target="_blank" class="ts">栾川</a>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="http://www.luoninglyw.com/" target="_blank" class="ts">洛宁</a>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="www.baidu.com" target="_blank" class="ts">新安</a></li>
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="http://www.mjlvyou.cn/" target="_blank" class="ts">孟津</a>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-3"><a
									href="http://www.ryly.gov.cn/" target="_blank" class="ts">汝阳</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- 玩乐结束-->

		<!-- Welcome-->
		<div class="welcome">
			<div class="container-fluid">
				<div class="row">

					<p class="text-center col-md-12  col-sm-12 col-xs-12 welcome-title">
						古都洛阳 — 欢迎您！</p>
				</div>
			</div>
		</div>
		<!-- welcome //end-->

		<!-- 底部版权声明 -->
		 
	 	<jsp:include page="include/footer.jsp"></jsp:include>
		<div class="back-top">
			<a href="javascript:;" class="top-button"> <img src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
			</a>
		</div>

	</div>
	<!-- 主页完index-->
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>

<script type="text/javascript">
	pics = new Array();
	urls = new Array();
	titles= new Array();
	scenid=new Array();
	var picIndex = 0;
	$(function() {
		$(".index").addClass("active");
		/*图片地址的数组*/
		$.ajax({
			type : "get",
			url : "BannerShow",
			dataType : 'json',
			success : function(banners) {
				//请求成功后调用回调函数

				$.each(banners, function(index, banner) {

					/* 向数组末尾追加新的元素 ，将返回的轮播图片放到数组 */

					pics.push(banner.path);
					urls.push(banner.url);
					titles.push(banner.name);
					scenid.push(banner.scenid);
				});

			}
		});

	})
	/* 上一张*/
	$("#getPrev").click(function() {

		picIndex--;
		/*下标减一，显示上一张*/
		if (picIndex < 0)
		/*当第一张显示结束后，显示最后一张*/
		{
			picIndex = pics.length - 1;
		}
		/*修改图片路径*/

		$("#banner-img").attr("src", pics[picIndex]);
		$("#banner-img").attr("title", titles[picIndex]);
		$("#banner-a").attr("href", "scens.jsp?scenid="+scenid[picIndex]);
	});

	/* 下一张*/
	$("#getNext").click(function() {

		picIndex++;
		if (picIndex == pics.length) {
			picIndex = 0;
		}
		/*修改图片路径*/
		$("#banner-img").attr("src", pics[picIndex]);
		$("#banner-img").attr("title", titles[picIndex]);
		$("#banner-a").attr("href", "scens.jsp?scenid="+scenid[picIndex]);
	});

	/* 点击跳转 */
	function linkGo(picIndex,obj) {
		$("#banner-img").attr("src", pics[picIndex]);
		$("#banner-img").attr("title", titles[picIndex]);
		$("#banner-a").attr("href", "scens.jsp?scenid="+scenid[picIndex]);
		$(".carousel-indicators>li").removeClass("active");
		$(obj).addClass("active");
	}
	/* 下一张*/
	function getNext() {
		picIndex++;
		if (picIndex == pics.length) {
			picIndex = 0;
		}
		$("#banner-img").attr("src", pics[picIndex]);
		$("#banner-img").attr("title", titles[picIndex]);
		$("#banner-a").attr("href", "scens.jsp?scenid="+scenid[picIndex]);
	}

	/*自动轮播*/
	setInterval(getNext, 5000);
</script>


<!-- 景点的AJAx -->
<script>
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 4; /*size*/
	
	/*首次加载*/
	getData(pageStart, 8);
	
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
				/************业务逻辑块：实现拼接html内容并append到页面*****************/
				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum);
				 $.each(scens,function(index,scen){
					 console.log(index,scen);
					result +='<div class="col-sm-6 col-md-3 scen">'+
							'<div class="thumbnail">'+ '<a target="_blank" href="scens.jsp?scenid='+scen.scenid+'">'+ 
							'<img class="scen-img"  src="'+scen.scenpic+'" alt="'+scen.scenname+'"></a>'+
							'<h3 class="scen-title">'+ scen.scenname +'</h3>'+
							'</div>'+
						'</div>';
				 });
				/* 将新读取的页面拼接到页面 */
				$('.scen-list').append(result);
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>

<script>
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 4; /*size*/	
	/*首次加载*/
	getData(pageStart, pageSize);
	function getData(offset,size){
		$.ajax({
			type: 'post',
			url: 'admin/InfoShow'+ '?' +'offset=' +offset + '&size=' + size, //这里offset,size无作用，仅方便调试
			dataType: 'json',
			success: function(infos){
				/* 每次读取数据个数 */
				sum=infos.length;
				/* 实现页面的拼接 */
				var result = '';				
				/************业务逻辑块：实现拼接html内容并append到页面*****************/				
				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum);							
				/*使用for循环模拟SQL里的limit(offset,size)*/		 		
				 $.each(infos,function(index,info){
					 console.log(index,info);
				 	result+="<div class='col-md-6 col-sm-6 infos'><blockquote class=''>"+
					 			"<h4>"+info.info_title+"</h4>"+
					 			"</blockquote>"+
					 		"<div class='col-md-12'>"+
						 		"<p class='col-md-7 info_txt'>"+info.info_txt+"</p>"+
								"<a href='infos.jsp?infoid="+info.info_id+"'target='_blank' class='col-md-5'>"+			
									"<img src='"+info.info_pic+"' class='img-responsive'/>"+
								"</a>"+
							"</div>"+
							"</div>";								
				 });
				/* 将新读取的页面拼接到页面 */
				$('.info-list').append(result);
				
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>
</html>