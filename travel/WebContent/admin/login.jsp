<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="洛阳旅游，洛阳，旅游">
<meta name="description" content="洛阳旅游后台登录">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<LINK rel="Bookmark" href="favicon.ico">
<LINK rel="Shortcut Icon" href="favicon.ico" />
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/signin.css" rel="stylesheet">
<title>后台登录 - 洛阳游</title>
</head>
<body>
	<div class="signin pd-20">
		<div class="signin-head">
			<img src="images/user.png" alt="" class="img-circle">
		</div>
		<form class="form-signin Huiform" id="loginform"
			action="${pageContext.request.contextPath}/admin/Login" method="post">		  
			<input type="text" name="username" class="form-control input-text"
				placeholder="用户名"  autofocus datatype="*4-16"
				nullmsg="请输入用户名！" errormsg="用户名格式不正确，请输入4~16个字符!" /> 
			<input
				type="password" name="password" class="form-control input-text"
				placeholder="密码"  datatype="*4-16" nullmsg="请输入密码！"
				errormsg="密码格式不正确,请输入4~16个字符！" />
			<button class="btn btn-lg btn-warning btn-block"   type="submit">登录</button>
		</form>
	</div>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="layer/layer.min.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">
	$(".Huiform").Validform();
</script>
</html>