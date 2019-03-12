<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="com.trav.cms.banner.domain.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>图片编辑</title>

		<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
		<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
		<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
</head>

	<body>
	<%request.setCharacterEncoding("UTF-8");%>
		<body>
			<div class="pd-20">
				<div class="Huiform">
					<form action="${pageContext.request.contextPath}/admin/BannerEdit" method="post" enctype="multipart/form-data">
						<table class="table table-bg">
							<tbody>
								<tr>
									<th width="100" class="text-r"><span class="c-red">*</span> 图片名：</th>
									<td><input type="text" style="width:300px" class="input-text" value="<%=new String(request.getParameter("banname").getBytes("ISO-8859-1"),"UTF-8")%>" id="pic-name" name="ban-name"></td>
								</tr>
								<tr>
									<th class="text-r"><span class="c-red">*</span> URL：</th>
									<td><input type="text" style="width:300px" class="input-text" value="<%=new String(request.getParameter("bantitle").getBytes("ISO-8859-1"),"UTF-8")%>"  id="pic-title" name="ban-title"></td>
								</tr>
				
								<tr>
									<th class="text-r">图片：</th>
									<td><input type="file" class="" name="ban-path" multiple required></td>
								</tr>
								<br/>
									<tr>
										<th><input type="hidden" value="${param.banid}" name="ban-id"></th>
									</tr>
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