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
							<li  class="active"><a href="info.jsp">资讯</a></li>
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
		
		
		<!-- 资讯详情 -->
		<div class="container scen-info">
				<div class="row">
					<div class="col-md-12">
					<div class="col-md-6">
						<img src="" class="" id="infoimg"/>
						
					</div>
					
					<div class="col-md-6">
						<input type="hidden" value="${param.infoid}" name="info-id" id="info-id" readonly>
						<div class="info-title">
							<blockquote id="">资讯标题</blockquote>
							<hr />
							<p class="intro-content" id="info-title">
								 
							</p>
						</div>
						
						<div class="scen-feature">
							<blockquote>活动时间</blockquote>
							<hr />
							<p class="intro-content" id="info-date">
								 
							</p>
						</div>
												 
					</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="container scen-intro">

							<blockquote>活动详情</blockquote>
							<hr />
							<p class="intro-content" id="info-content">
								 
						
							</p>
						</div>
					</div>
				</div>

			</div>


<!-- 底部版权声明 -->
		<%@ include file="include/footer.jsp" %>
</body>

	<script src="public/js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script> 
	<script src="public/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="public/js/back-top.js" type="text/javascript"></script>
	
	<script type="text/javascript">
			$(function(){
				var info_id=$("#info-id").val();
 
				$.ajax({
					type: 'post',
					url: 'admin/InfoById'+ '?' +'infoid=' +info_id, //这里offset,size无作用，仅方便调试
					dataType: 'json',
					success: function(infos){
						/* 每次读取数据个数 */
						//alert(scens.length);
						/* 实现页面的拼接 */
						info=infos[0];
						console.log(info.info_title); 
						$("title").html(info.info_title+" - 洛阳旅游");
						$("#info-title").html(info.info_title);
						$("#info-tag").html(info.info_tag);
						$("#info-url").html(info.info_url);	
						$("#info-date").html(info.info_date);
 
						$("#infoimg").attr("alt",info.info_title);
						$("#infoimg").attr("src",info.info_pic);
						$("#info-content").html(info.info_txt);		
						
					},
					error: function(xhr, type){
						alert('Ajax error!');
					}
				});
			});
				
				 
			</script>
	
	
	
</html>