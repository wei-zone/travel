<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>景点编辑</title>
		<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
		<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
		<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
</head>

	<body>
		<body>
			<div class="pd-20">
				<div class="Huiform">
					<form action="${pageContext.request.contextPath}/admin/ScenEdit" method="post" enctype="multipart/form-data">
						<table class="table table-bg">
							<tbody>

								<tr>
									<th width="100" class="text-r">ID :</th>
									<td><input type="text" value="${param.scenid}" name="scen-id" id="scen-id" readonly></td>
								</tr>
								
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span> 景点名：</th>
									<td><input type="text" style="width:300px" class="input-text"   id="scen-name" name="scen-name"></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> 标题：</th>
									<td><input type="text" style="width:300px" class="input-text"   id="scen-title" name="scen-title"></td>
								</tr>
								
								
								<tr>
									<th class="text-r"><span class="c-red">*</span> 星级：</th>
									<td><input type="text" style="width:300px" class="input-text"   id="scen-level" name="scen-level" required></td>
								</tr>
	 
								<tr>
									<th class="text-r"><span class="c-red">*</span> 特色：</th>
									<td><input type="text" style="width:300px" class="input-text"   id="scen-feature" name="scen-feature" required></td>
								</tr>						
								<tr>
									<th width="100" class="text-r">地图：</th>
									<td><input type="text" style="width:300px" class="input-text"   id="scen-map" name="scen-map"></td>
								</tr>						
								<tr>
									<th class="text-r">地址：</th>
									<td><input type="text" style="width:300px" class="input-text" id="scen-add"  name="scen-add"></td>
								</tr>
								<tr>
									<th class="text-r">英文名：</th>
									<td><input type="text" style="width:300px" class="input-text" id="scen-name-en" name="scen-name-en"></td>
								</tr>
								<tr>
									<th class="text-r">排序：</th>
									<td><input type="number" style="width:300px" class="input-text" id="scen-order" name="scen-order"></td>
								</tr>
								<tr>
									<th class="text-r">页面URL：</th>
									<td><input type="text" style="width:300px" class="input-text" id="scen-url"  name="scen-url"></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span>图片：</th>
									<td><input type="file" style="width:300px" class="" name="pic-path" multiple required></td>
								</tr>
								<tr>
									<th class="text-r">交通状况：</th>
									<td><textarea class="" id="scen-traff" name="scen-traff" rows="6" cols="48"></textarea></td>
								</tr>
								<tr>
									<th class="text-r">景点描述：</th>
									<td><textarea class="" id="scen-intro" name="scen-intro" rows="8" cols="48"></textarea></td>
								</tr>
 
								<br>
								
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
			$(function(){
				var scenid=$("#scen-id").val();
 
				$.ajax({
					type: 'post',
					url: 'ScenById'+ '?' +'scenid=' +scenid, //这里offset,size无作用，仅方便调试
					dataType: 'json',
					success: function(scens){
						/* 每次读取数据个数 */
						//alert(scens.length);
						/* 实现页面的拼接 */
						scen=scens[0];
						console.log(scen.scenname); 
						$("#scen-name").val(scen.scenname);
						$("#scen-intro").val(scen.scenintro);
						$("#scen-level").val(scen.scenlevel);	
						$("#scen-title").val(scen.scentitle);	
						$("#scen-feature").val(scen.scenfeature);	
						$("#scen-traff").val(scen.scentraff);	
						$("#scen-map").val(scen.scenmap);	
						$("#scen-add").val(scen.scenadd);	
						$("#scen-url").val(scen.scenurl);	
						$("#scen-name-en").val(scen.scennameen);	
						$("#scen-order").val(scen.scenorder);		
					},
					error: function(xhr, type){
						alert('Ajax error!');
					}
				});
			});
				
				 
			</script>
			
		</body>

</html>