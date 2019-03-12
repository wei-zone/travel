<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<meta name="keywords" content="洛阳，旅游，旅游景点信息,旅游资讯" />
		<meta name="description" content="洛阳旅游网，旅游，旅游景点，旅游资讯" />
		<title></title>
		<link rel="Bookmark" href="favicon.ico">
		<link rel="Shortcut Icon" href="favicon.ico" />
		<link rel="stylesheet" type="text/css" href="public/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="public/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" href="public/css/travel/index.css" />
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
	
		
	<div class="container-fluid scen-info">
		<div class="row">
			<h5 class="container scen-name"><a href="travel.jsp">畅游</a> <em>&nbsp;>&nbsp;</em><font id="scen-name">龙门石窟</font><em>&nbsp;&nbsp;</em><font color="#F7B73" id="scen-name-en">Longmen</font></h5>
				<img src="" id="scenimg" class=""/>
			<div class="col-md-12">

				<div class="container scen-intro">

					<blockquote>景点介绍<em>&nbsp;&nbsp;</em>
						<font color="#F7B73" id="scen-level"></font>
						<input type="hidden" value="${param.scenid}" name="scen-id" id="scen-id" readonly>
							</blockquote>
						<hr />
						<p class="intro-content" id="scen-intro">
							 
						</p>
					</div>
					<div class="container scen-feature">
						<blockquote>景点特色</blockquote>
						<hr />
						<p class="intro-content" id="scen-feature">
							 
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>景区地址</blockquote>
						<hr />
						<p class="intro-content" id="scen-add">
							 
						</p>
					</div>
					
					<div class="container scen-feature">
						<blockquote>交通方式</blockquote>
						<hr />
						<p class="intro-content" id="scen-traff">
							 
						</p>
					</div>
				</div>
			</div>
	</div>	
		
		
	<!-- 底部版权声明 -->
	<%@ include file="include/footer.jsp" %>

	<div class="back-top">
		<a href="javascript:;" class="top-button"> <img
			src="public/img/top-arrow.png" class="top-img" title="返回顶部" />
		</a>
	</div>
	
</div>

<!-- Page页结束 -->				
</body>

<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script> 
<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="public/js/back-top.js" type="text/javascript"></script>
	
		 
<script type="text/javascript">

$(function(){
	var scenid=$("#scen-id").val();

	$.ajax({
		type: 'post',
		url: 'admin/ScenById'+ '?' +'scenid=' +scenid, //这里offset,size无作用，仅方便调试
		dataType: 'json',
		success: function(scens){
			/* 每次读取数据个数 */
			//alert(scens.length);
			/* 实现页面的拼接 */
			scen=scens[0];
			console.log(scen.scenname); 
			
			$("title").html(scen.scenname+" - 洛阳旅游");
			$("#scen-name").html(scen.scenname);
			$("#scen-intro").html(scen.scenintro);
			$("#scen-level").html(scen.scenlevel);	
			$("#scen-title").html(scen.scentitle);	
			$("#scen-feature").html(scen.scenfeature);	
			$("#scen-traff").html(scen.scentraff);	
			$("#scen-map").html(scen.scenmap);	
			$("#scen-add").html(scen.scenadd);	
			$("#scen-url").html(scen.scenurl);	
			$("#scen-name-en").html(scen.scennameen);	
			$("#scen-order").html(scen.scenorder);
			
			$("#scenimg").attr("src",scen.scenpic);
			$("#scenimg").attr("alt",scen.scenname);
			$("#scenimg").attr("title",scen.scenname);
		},
		error: function(xhr, type){
			alert('Ajax error!');
		}
	});
});
	
</script>
</html>