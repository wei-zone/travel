<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>图片上传</title>

		<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
		<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
		<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
	</head>

	<body>

		<body>
			<div class="pd-20">
				<div class="Huiform">
					<form action="${pageContext.request.contextPath}/admin/BannerAdd" method="post" enctype="multipart/form-data">
						<table class="table table-bg">
							<tbody>
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span> 图片名：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入图片名" id="ban-name" name="ban-name" required></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> URL：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入标题" id="ban-title" name="ban-title"></td>
								</tr>
				
								<tr>
									<th class="text-r">图片：</th>
									<td><input type="file" style="width:300px" class="" name="ban-path" multiple required></td>
								</tr>
								<br />
									<tr><th></th></tr>
								<tr>
									
									<th></th>
									<td><button class="btn btn-success radius" type="submit"><i class="icon-ok"></i> 确定</button></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
			<script type="text/javascript" src="js/H-ui.js"></script>
			<script type="text/javascript" src="js/H-ui.admin.js"></script>
			<script type="text/javascript">
				$(".Huiform").Validform();
			</script>

		</body>

</html>