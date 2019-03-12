<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯" />
<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯" />
<title>资讯  - 洛阳旅游网</title>
<link rel="Bookmark" href="favicon.ico">
<link rel="Shortcut Icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
<link rel="stylesheet" type="text/css" href="public/css/info-ban.css"/>
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
							<li><a href="travel.jsp">畅游</a></li>
							<li class="active"><a href="info.jsp">资讯</a></li>
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

			<!-- 资讯轮播-->
			<div class="container-fluid info-ban">
				<div class="row">
					<div class="col-md-12">

						<div class="index_banner" id="banner_tabs">
							<ul>
								<li>
									<a href=""><img src="image/info/2014271.jpg" width="100%" height="340px"></a>
								</li>
								<li>
									<a href=""><img src="image/info/2015B90.jpg" width="100%" height="340px"></a>
								</li>
								<li>
									<a href=""><img src="image/info/20191CF.jpg" width="100%" height="340px"></a>
								</li>
								<li>
									<a href=""><img src="image/info/201BB71.jpg" width="100%" height="340px"></a>
								</li>
								<li>
									<a href=""><img src="image/info/402A6DB.jpg" width="100%" height="340px"></a>
								</li>
					 
							</ul>
							<!--此处的img是用来占位的，在实际使用中，可以另外制作一张全空的图片-->
							<img style="visibility:hidden;" src="image/index_banner1.jpg" height="340px" width="100%">
						
							<cite>
								<span class="cur">1</span>
								<span>2</span>
								<span>3</span>
								<span>4</span>
								<span>5</span>
							</cite>		
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- 资讯轮播END-->

			<img src="public/img/hot-info.png" class="center-block sea-hot" />
			<!-- 资讯展示 -->
			<div class="info-show">
				<div class="container">
					<!-- Example row of columns -->					 
					<div class="row" id="slide">
						<!-- <div class="col-md-4 col-sm-4 infos">
							<blockquote class="">
								<h4>Heading</h4>
							</blockquote>
							<div class="col-md-12 col-md-pull-1 col-sm-pull-1">
								<p class="col-md-7">
									Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper.
								</p>
								<a href="#" class="col-md-5">
									<img src="image/info/ava-1.jpg" class="img-responsive" />
								</a>
							</div>
						</div>
						 -->

					</div>
					<p class="center-block text-center more">
						<a class="btn btn-primary load-more" role="button">加载更多 »</a>
					</p>
					<hr>
				</div>

			</div>
			<!-- 资讯展示结束INFO-->

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
		<!-- 主页完index-->
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/jquery-banner.min.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript" charset="UTF-8"></script>

<script type="text/javascript">
	$(function() {
		 
		if(!Function.prototype.bind) {
			Function.prototype.bind = function(obj) {
				var owner = this,
					args = Array.prototype.slice.call(arguments),
					callobj = Array.prototype.shift.call(args);
				return function(e) { e = e || top.window.event || window.event;
					owner.apply(callobj, args.concat([e])); };
			};
		}
	});
	var banner_tabs = function(id) {
		this.ctn = document.getElementById(id);
		this.adLis = null;
		this.btns = null;
		this.animStep = 0.2; //动画速度0.1～0.9
		this.switchSpeed = 6; //自动播放间隔(s)
		this.defOpacity = 1;
		this.tmpOpacity = 1;
		this.crtIndex = 0;
		this.crtLi = null;
		this.adLength = 0;
		this.timerAnim = null;
		this.timerSwitch = null;
		this.init();
	};
	banner_tabs.prototype = {
		fnAnim: function(toIndex) {
			if(this.timerAnim) { window.clearTimeout(this.timerAnim); }
			if(this.tmpOpacity <= 0) {
				this.crtLi.style.opacity = this.tmpOpacity = this.defOpacity;
				this.crtLi.style.filter = 'Alpha(Opacity=' + this.defOpacity * 100 + ')';
				this.crtLi.style.zIndex = 0;
				this.crtIndex = toIndex;
				return;
			}
			this.crtLi.style.opacity = this.tmpOpacity = this.tmpOpacity - this.animStep;
			this.crtLi.style.filter = 'Alpha(Opacity=' + this.tmpOpacity * 100 + ')';
			this.timerAnim = window.setTimeout(this.fnAnim.bind(this, toIndex), 50);
		},
		fnNextIndex: function() {
			return(this.crtIndex >= this.adLength - 1) ? 0 : this.crtIndex + 1;
		},
		fnSwitch: function(toIndex) {
			if(this.crtIndex == toIndex) { return; }
			this.crtLi = this.adLis[this.crtIndex];
			for(var i = 0; i < this.adLength; i++) {
				this.adLis[i].style.zIndex = 0;
			}
			this.crtLi.style.zIndex = 2;
			this.adLis[toIndex].style.zIndex = 1;
			for(var i = 0; i < this.adLength; i++) {
				this.btns[i].className = '';
			}
			this.btns[toIndex].className = 'cur'
			this.fnAnim(toIndex);
		},
		fnAutoPlay: function() {
			this.fnSwitch(this.fnNextIndex());
		},
		fnPlay: function() {
			this.timerSwitch = window.setInterval(this.fnAutoPlay.bind(this), this.switchSpeed * 1000);
		},
		fnStopPlay: function() {
			window.clearTimeout(this.timerSwitch);
		},
		init: function() {
			this.adLis = this.ctn.getElementsByTagName('li');
			this.btns = this.ctn.getElementsByTagName('cite')[0].getElementsByTagName('span');
			this.adLength = this.adLis.length;
			for(var i = 0, l = this.btns.length; i < l; i++) {
				with({ i: i }) {
					this.btns[i].index = i;
					this.btns[i].onclick = this.fnSwitch.bind(this, i);
					this.btns[i].onclick = this.fnSwitch.bind(this, i);
				}
			}
			this.adLis[this.crtIndex].style.zIndex = 2;
			this.fnPlay();
			this.ctn.onmouseover = this.fnStopPlay.bind(this);
			this.ctn.onmouseout = this.fnPlay.bind(this);
		}
	};
	var player1 = new banner_tabs('banner_tabs');
</script>
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
				/*隐藏more*/
				if (sum <= 0){
					$(".load-more").hide();
				}else{
					$(".load-more").show();
			 		
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