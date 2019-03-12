<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.trav.cms.banner.domain.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
<style type="text/css">
/* 预览 */
.btn-show{
	width: 100%;
    height: 100%;

    background: rgba(99, 94, 94, 0.13);
    color: rgba(42, 49, 42, 0.94);
    border-radius: 5px;
    display: block;
    line-height: 20px;
    font-size: 12px;
}
   
</style>
<title>轮播图</title>
</head>

<body>
		<%
		List<Banner> list = (List<Banner>) request.getAttribute("banner");%>
		
	<nav class="Hui-breadcrumb"> 
	<i class="icon-home"></i> 首页 
	<span class="c-gray en">&gt;</span> 图片库 
	<span class="c-gray en">&gt;</span>图片列表 
	<a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"> 
		<i class="icon-refresh"></i>
	</a> 
	</nav>
	<div class="pd-20">

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> 			 
				<a class="btn btn-primary radius"
					onClick="picture_add('700','380','添加轮播图','banner-add.jsp')"
					href="javascript:;"><i class="icon-plus"></i> 添加轮播图
				</a>
			</span> 
			<span class="r">共有数据： <strong><%=list.size() %></strong> 条
			</span>
		</div>

		<table
			class="table table-border table-bordered table-bg table-hover table-sort pic-list">
			<thead>
				<tr class="text-c"><td colspan="6"><span class="c-red">*</span>轮播图只有五条<span class="c-red">*</span></td></tr>
				<tr class="text-c">
					<th width="40"><input name="" type="checkbox" value=""></th>
					<th width="80">ID</th>
					<th width="80">图片名称</th>
					<th width="150">URL</th>
					<th width="150">路径</th>
					<th width="70">操作</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < list.size(); i++) {
						Banner banner = list.get(i);
				%>	
				
				<tr class="text-c">
					<td><input name="" type="checkbox" value=""></td>
					<td><%=banner.getBanid()%></td>
					<td>
					<a class="btn-show" onClick="picture_show('800','450','<%=banner.getBanname()%>','banner-show.jsp?banpath=<%=banner.getBanpath()%>')"
					href="javascript:;"><%=banner.getBanname()%></a>
				</td>
					<td><%=banner.getBantitle()%></td>
					<td><%=banner.getBanpath()%></td>


					<td>
						<a style="text-decoration:none" class="ml-5" onClick="picture_edit('10001','700','380','轮播图编辑','banner-edit.jsp?banid=<%=banner.getBanid() %>&banname=<%=banner.getBanname()%>&bantitle=<%=banner.getBantitle()%>&banpath=<%=banner.getBanpath() %>')" href="javascript:;" title="编辑"><i class="icon-edit"></i></a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath}/admin/BannerDel?banid=<%=banner.getBanid()%>&banpath=<%=banner.getBanpath() %>" onclick="return confirm('确定删除吗？');" title="删除"><i class="icon-trash"></i></a>
					</td>
				</tr>

				<%
					}
				%>
			
		</table>
 
	</div>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="layer/layer.min.js"></script>
<script type="text/javascript" src="js/pagenav.cn.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
 

</html>