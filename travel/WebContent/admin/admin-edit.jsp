<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>管理员编辑</title>
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />

</head>
<body>
	<div class="pd-20">
		<form action="${pageContext.request.contextPath}/admin/UserEdit" method="post">
			<table class="table table-bg">
				<tbody>
					<tr>
						<th width="100" class="text-r"><span class="c-red">*</span>
							用户ID：</th>
						<td><input type="text" style="width: 300px"
							class="input-text" value="${param.userid}" id="userid"
							name="userid" readonly>
						</td>
					</tr>
				
					<tr>
						<th width="100" class="text-r"><span class="c-red">*</span>
							用户名：</th>
						<td><input type="text" style="width: 300px"
							class="input-text" value="" placeholder="输入用户名" id="username"
							name="username" required></td>
					</tr>
					<tr>
						<th width="100" class="text-r"><span class="c-red">*</span>
							邮箱：</th>
						<td><input type="text" style="width: 300px"
							class="input-text" value="" placeholder="输入用户邮箱" id="email"
							name="email" required></td>
					</tr>

					<tr>
						<th width="100" class="text-r"><span class="c-red">*</span>
							性别：</th>
						<td><input type="text" style="width: 300px"
							class="input-text" value="" placeholder="输入用户性别" id="gender"
							name="gender" required></td>
					</tr>
					
			 		 
					<br />
					<tr>
						<th></th>
					</tr>
					<tr>

					<th></th>
						<td><button class="btn btn-success radius" type="submit">
								<i class="icon-ok"></i> 确定
							</button></td>
					</tr>
				</tbody>
			</table>
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
		$(function(){
			var userid=$("#userid").val();

			$.ajax({
				type: 'post',
				url: 'UserById'+ '?' +'userid=' +userid, //这里offset,size无作用，仅方便调试
				dataType: 'json',
				success: function(users){
					/* 每次读取数据个数 */
					//alert(scens.length);
					/* 实现页面的拼接 */
					user=users[0];
					console.log(users.username); 
					
		 
					
					$("#username").val(user.username);
					$("#email").val(user.email);
					$("#gender").val(user.gender);	
					 			 		
				},
				error: function(xhr, type){
					alert('Ajax error!');
				}
			});
		});
			
	</script>


</html>