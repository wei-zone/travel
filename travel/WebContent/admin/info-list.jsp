<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>资讯列表</title>
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
<title>图片列表</title>
</head>

<body>
				
	<nav class="Hui-breadcrumb"> 
	<i class="icon-home"></i> 首页 
	<span class="c-gray en">&gt;</span> 资讯管理
	<span class="c-gray en">&gt;</span>资讯列表
	<a class="btn btn-success radius r mr-20"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"> 
		<i class="icon-refresh"></i>
	</a> 
	</nav>
	
	<div class="pd-20">

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l">
			<a class="btn btn-primary radius" onClick="picture_add('700','580','添加资讯','info-add.jsp')"
				href="javascript:;"><i class="icon-plus"></i>添加资讯
			</a>
			</span> 
			<span class="r">共有数据：<strong id="count"></strong> 条</span>
		</div>

		<table
			class="table table-border table-bordered table-bg table-hover table-sort info-list">
			<thead>
				<tr class="text-c">
					<th width="40"><input name="" type="checkbox" value=""></th>
					<th width="40">ID</th>
					<th width="80">标题</th>
					<th width="80">分类</th>
					<th width="80">图片</th>
					<th width="80">更新时间</th>
					<th width="80">热度</th>
					<th width="80">操作</th>
				</tr>
			</thead>
			<tbody id="infos">
				 
				 
				 
			</tbody>
			 
		</table>
			
		<!-- 分页 -->
		<div id="" class="text-c page">
			<a href="javascript:;" class="btn btn-primary radius prePage">&lt;上一页</a>&nbsp;&nbsp;
			<a href="javascript:;" class="btn btn-primary radius nextPage">下一页&gt;</a>
		</div>
	</div>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="layer/layer.min.js"></script>
<script type="text/javascript" src="js/pagenav.cn.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>



<script>
/*分页的实现*/
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 8; /*size*/
	
/* 	if(counter<=0)
	{
		$(".prePage").hide();
	}
	else{
		$(".prePage").show();
	} */
	
	/*首次加载*/
	getData(pageStart, pageSize);
	/*--------------------------------------*/
	/*监听加载更多*/
	
	//下一页
 	 $(".nextPage").click(function(){
 		//console.log("load more");
    	counter ++;
		pageStart = counter * pageSize;		
		getData(pageStart, pageSize);
    });
 	//上一页
 	 $(".prePage").click(function(){
	 		//console.log("load more");
	    	counter --;
			pageStart = counter * pageSize;		
			getData(pageStart, pageSize);
	 });
		
	
	//Ajax请求数据
	function getData(offset,size){
		$.ajax({
			type: 'POST',
			url: 'InfoShow'+ '?' +'offset=' +offset + '&size=' + size,
			dataType: 'json',
			success: function(infos){
				/* 每次读取数据个数 */
				sum=infos.length;
				$("#count").html(sum);
				/* 实现页面的拼接 */
				var result = '';
				
				/************业务逻辑块：实现拼接html内容并append到页面*****************/
				
				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum,"counter:"+counter);
				
		 
				/*******************************************/
		 
				/*使用for循环模拟SQL里的limit(offset,size)*/
			 		
				 $.each(infos,function(index,info){
					 console.log(index,info);
					
				 	result+="<tr class='text-c'><td><input name='' type='checkbox' value=''></td>"+
					 		"<td>"+info.info_id+"</td>"+
					 		"<td><a class='btn-show' onClick=\"picture_show('800','450','"+info.info_title+"','banner-show.jsp?banpath="+info.info_pic+"')\""+
							" \"href="+"javascript:;\""+">"+info.info_title+"</a></td>"+			
							"<td>"+info.info_tag  +"</td>"+
							"<td>"+info.info_pic  +"</td>"+						 
							"<td>"+info.info_date +"</td>"+
							"<td>"+info.info_order+"</td>"+
							"<td><a style='text-decoration:none' class='ml-5' onClick=\"picture_add('650','500','"+info.info_title+"','info-edit.jsp?infoid="+info.info_id+"')\""+ 
							" href=\"javascript:;\" title='编辑'><i class='icon-edit'></i></a>&nbsp;&nbsp;"+ 
							"<a href=\"${pageContext.request.contextPath}/admin/InfoDel?infoid="+info.info_id+"&infopic="+info.info_pic+"\"onclick=\"return confirm('确定删除吗？');\" title='删除'><i class='icon-trash'></i></a>"+
							"</td>"+
							"</tr>";
									
				 });
				/* 将新读取的页面拼接到页面 */
				$('#infos').html(result);
				
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>

</html>