<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link type="text/css" rel="stylesheet" href="css/H-ui.css"/>
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css"/>
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css"/>

<title>景区管理</title>
</head>
<body>
 
<nav class="Hui-breadcrumb">
	 <i class="icon-home"></i>首页
	 <span class="c-gray en">&gt;</span> 景点 
	 <span class="c-gray en">&gt;</span> 景区管理 
 	 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" >
 	 <i class="icon-refresh"></i></a>
</nav>

<div class="pd-20">
  <div class="text-c">
    
      <label for="scen-name"> 景点  </label>
      <input type="text" placeholder="输入景点名查询" value="" name="find-name" id="find-name" class="input-text" style="width:120px">
  		<input type="button" class="btn radius btn-success find-scen" value="搜索">
  </div>
  
  <div class="cl pd-5 bg-1 bk-gray mt-20"> 
	 <span class="l"> 
	 <a class="btn btn-primary radius"
		onClick="picture_add('650','500','添加景点','scen-add.jsp')"
		href="javascript:;"><i class="icon-plus"></i> 添加景点
	 </a>
     </span> 
	 <span class="r">共有数据：<strong id="count"></strong> 条</span>
  </div>
  
    <table class="table table-border table-bordered table-bg table-sort">
      <thead>
        <tr class="text-c">
          <th width="25"><input type="checkbox" name="" value=""></th>
          <th width="30">ID</th>
          <th width="80">名称</th>
          <th width="60">星级</th>
          <th width="80">图片</th>          
          <th width="100">特色</th>
          <th width="70">操作</th>
        </tr>
      </thead>
      <tbody id="scens">
		 
 
      </tbody>
    </table>
   
   	<div id="" class="text-c page">
			<a href="javascript:;" class="btn btn-primary radius prePage">&lt;上一页</a>&nbsp;&nbsp;
			<a href="javascript:;" class="btn btn-primary radius nextPage">下一页&gt;</a>
		</div>
	</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="layer/layer.min.js"></script> 
<script type="text/javascript" src="js/pagenav.cn.js"></script> 
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script>

<script>
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 8; /*size*/
	var sum=8;
	/*首次加载*/
	getData(pageStart, pageSize);
	
	/*监听加载更多*/
	
		//上一页
	 	 $(".prePage").click(function(){
	 		
	    	counter --;
			pageStart = counter * pageSize;		
			getData(pageStart, pageSize);
	    });
	
		//下一页
		 $(".nextPage").click(function(){	 		
		    	counter ++;
				pageStart = counter * pageSize;		
				getData(pageStart, pageSize);
		    });
		
		//Ajax请求数据
	function getData(offset,size){
		/* 	if(counter<0)
			{
				$(".prePage").hide();
			}
			else{
				$(".prePage").show();
			} 
			if(sum<size){
				$(".nextPage").hide();
			}
			else{
				$(".nextPage").show();
			} */
		
		$.ajax({			
			type: 'post',
			url: 'ScenList'+ '?' +'offset=' +offset + '&size=' + size,
			dataType: 'json',
			success: function(scens){
				/* 每次读取数据个数 */
				sum=scens.length;
				$("#count").html(sum);
				/* 实现页面的拼接 */
				var result = '';			 
				/************业务逻辑块：实现拼接html内容并append到页面*****************/
				 console.log("offset:"+offset ,"size:"+ size, "sum:"+sum,"counter:"+counter);								
				 $.each(scens,function(index,scen){
				result+="<tr class='text-c'><td><input name='' type='checkbox' value=''></td>"+
				 		"<td>"+scen.scenid+"</td>"+
				 		"<td><a class='btn-show' onClick=\"picture_show('800','450','"+scen.scenname+"','banner-show.jsp?banpath="+scen.scenpic+"')\""+
						" \"href="+"javascript:;\""+">"+scen.scenname+"</a></td>"+ "<td>"+scen.scenlevel + 
						"</td>"+"<td>"+scen.scenpic +"</td>"+ "<td>"+scen.scenfeature +"</td>"+
						"<td><a style='text-decoration:none' class='ml-5' onClick=\"picture_add('650','500','"+scen.scenname+"','scen-edit.jsp?scenid="+scen.scenid+"')\""+ 
						" href=\"javascript:;\" title='编辑'><i class='icon-edit'></i></a>&nbsp;&nbsp;"+ 
						"<a href=\"${pageContext.request.contextPath}/admin/ScenDel?scenid="+scen.scenid+"&scenpic="+scen.scenpic+"\"onclick=\"return confirm('确定删除吗？');\" title='删除'><i class='icon-trash'></i></a>"+
						"</td>"+
						"</tr>";	
				 });
				/* 将新读取的页面拼接到页面 */
				$('#scens').html(result);	 
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}

	/* Ajax模糊查询 */
	$(".find-scen").click(function(){
		var scenname=$("#find-name").val();
		//alert(scenname.length);
		if(scenname.length>0){
			//Ajax请求数据
			$.ajax({
				
			type: 'post',
			url: 'ScenByName'+ '?' +'scenname=' +scenname,
			dataType: 'json',
			success: function(scens){
				/* 每次读取数据个数 */
				sum=scens.length;
				/* 实现页面的拼接 */
				var result = '';
			 
				 $.each(scens,function(index,scen){
 
						/* ID	名称	星级	图片	特色 */
					result+="<tr class='text-c'><td><input name='' type='checkbox' value=''></td>"+
				 		"<td>"+scen.scenid+"</td>"+
				 		"<td><a class='btn-show' onClick=\"picture_show('900','500','"+scen.scenname+"','banner-show.jsp?banpath="+scen.scenpic+"')\""+
						" \"href="+"javascript:;\""+">"+scen.scenname+"</a></td>"+			
						"<td>"+scen.scenlevel +"</td>"+
						"<td>"+scen.scenpic  +"</td>"+						 
						"<td>"+scen.scenfeature +"</td>"+
						"<td><a style='text-decoration:none' class='ml-5' onClick=\"picture_add('650','500','"+scen.scenname+"','scen-edit.jsp?scenid="+scen.scenid+"')\""+ 
						" href=\"javascript:;\" title='编辑'><i class='icon-edit'></i></a>&nbsp;&nbsp;"+ 
						"<a href=\"${pageContext.request.contextPath}/admin/ScenDel?scenid="+scen.scenid+"&scenpic="+scen.scenpic+"\"onclick=\"return confirm('确定删除吗？');\" title='删除'><i class='icon-trash'></i></a>"+
						"</td>"+
						"</tr>";	
 
				 });
				/* 将新读取的页面拼接到页面 */
				$('#scens').html(result);
						 	 
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
		}
		else if(scenname.length==0){
			getData(pageStart, pageSize);
		}
	});	
});



</script>
</body>
</html>