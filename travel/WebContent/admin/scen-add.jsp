<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>景点上传</title>
		<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
		<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
		<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
	</head>
		<body>
			
				<div class="Huiform">
					<form action="${pageContext.request.contextPath}/admin/ScenAdd" method="post" enctype="multipart/form-data">
						<table class="table table-bg">
							<tbody>
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span> 景点名：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入景点名" id="scen-name" name="scen-name" required></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> 星级：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入景点星级" id="scen-level" name="scen-level" required></td>
								</tr>
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span>标题：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入景点标题" id="scen-title" name="scen-title" required></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> 特色：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入景点特色" id="scen-feature" name="scen-feature" required></td>
								</tr>						
								<tr>
									<th width="100" class="text-r">地图：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入地图信息" id="scen-map" name="scen-map"></td>
								</tr>						
								<tr>
									<th class="text-r">地址：</th>
									<td><input type="text" style="width:300px" class="input-text" placeholder="输入景点地址" name="scen-add"></td>
								</tr>
								<tr>
									<th class="text-r">英文名：</th>
									<td><input type="text" style="width:300px" class="input-text" placeholder="输入英文名称" name="scen-name-en"></td>
								</tr>
								<tr>
									<th class="text-r">排序：</th>
									<td><input type="number" style="width:300px" class="input-text" placeholder="输入景点序列" name="scen-order"></td>
								</tr>
								<tr>
									<th class="text-r">页面URL：</th>
									<td><input type="text" style="width:300px" class="input-text" placeholder="输入页面URL" name="scen-url"></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span>图片：</th>
									<td><input type="file" style="width:300px" class="" name="pic-path" multiple required></td>
								</tr>
								<tr>
									<th class="text-r">交通状况：</th>
									<td><textarea class="" name="scen-traff" rows="6" cols="48" placeholder="编辑交通状况"></textarea></td>
								</tr>
								<tr>
									<th class="text-r">景点描述：</th>
									<td><textarea class="" name="scen-intro" rows="8" cols="48" placeholder="编辑景点描述"></textarea></td>
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
		 
		</body>
			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
			<script type="text/javascript" src="js/H-ui.js"></script>
			<script type="text/javascript" src="js/H-ui.admin.js"></script>
			<script type="text/javascript">
				$(".Huiform").Validform();
			</script>

</html>