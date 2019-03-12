<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>资讯编辑</title>

		<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
		<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
		<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
</head>

	<body>
		<body>
			<div class="pd-20">
				<div class="Huiform">
					<form action="${pageContext.request.contextPath}/admin/InfoEdit" method="post" enctype="multipart/form-data">
						<table class="table table-bg">
							<tbody>
									<tr>
									<th width="100" class="text-r">ID :</th>
									<td><input type="text" value="${param.infoid}" name="info_id" id="info_id" readonly></td>
								</tr>
								
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span> 标题：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入资讯标题" id="info_title" name="info_title" required></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> 标签：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入资讯标签" id="info_tag" name="info_tag" required></td>
								</tr>
					 
								<tr>
									<th class="text-r"><span class="c-red">*</span> 页面URL：</th>
									<td><input type="text" style="width:300px" class="input-text" value="" placeholder="输入页面URL" id="info_url" name="info_url" required></td>
								</tr>												
								<tr>
									<th class="text-r">排序：</th>
									<td><input type="number" style="width:300px" class="input-text" placeholder="输入资讯排序" name="info_order" id="info_order"></td>
								</tr>
								<tr>
									<th class="text-r">日期：</th>
									<td><input type="date" style="width:300px" class="input-text" placeholder="输入资讯日期" name="info_date" id="info_date" value=""></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span>图片上传：</th>
									<td><input type="file" style="width:300px" class="" name="info_pic" id="info_pic" multiple required></td>
								</tr>
								 
								<tr>
									<th class="text-r">内容：</th>
									<td><textarea class="" name="info_txt" id="info_txt" rows="5" cols="48" placeholder="编辑资讯内容"></textarea></td>
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
			$(function(){
				var info_id=$("#info_id").val();
 
				$.ajax({
					type: 'post',
					url: 'InfoById'+ '?' +'infoid=' +info_id, //这里offset,size无作用，仅方便调试
					dataType: 'json',
					success: function(infos){
						/* 每次读取数据个数 */
						//alert(scens.length);
						/* 实现页面的拼接 */
						info=infos[0];
						console.log(info.info_title); 
						
						$("#info_title").val(info.info_title);
						$("#info_tag").val(info.info_tag);
						$("#info_url").val(info.info_url);	
						 
						$("#info_order").val(info.info_order);	
						$("#info_txt").val(info.info_txt);		
					},
					error: function(xhr, type){
						alert('Ajax error!');
					}
				});
			});
				
				 
			</script>
			
		</body>

</html>