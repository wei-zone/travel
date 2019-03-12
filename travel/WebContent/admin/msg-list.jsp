<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link type="text/css" rel="stylesheet" href="css/H-ui.css"/>
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css"/>
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css"/>
 
<title>留言列表</title>
</head>
<body>
<nav class="Hui-breadcrumb"><i class="icon-home"></i> 首页 <span class="c-gray en">&gt;</span> 留言管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="icon-refresh"></i></a></nav>
<div class="pd-20">
  <div class="cl pd-5 bg-1 bk-gray mt-20">
    
    <span class="r">共有数据：<strong id="count"></strong> 条</span>
  </div>
  <table class="table table-border table-bordered table-bg">
    <thead>
      <tr>
        <th scope="col" colspan="8" class="text-c">留言列表</th>
      </tr>
      <tr class="text-c">
        <th width="25"><input type="checkbox" name="" value=""></th>
        <th width="20">ID</th>
        <th width="50">用户</th>
        <th width="60">邮箱</th>
        <th width="230">内容</th>
        <th width="70">留言时间</th>
        <th width="70">留言IP地址</th>
        <th width="70">操作</th>
      </tr>
    </thead>
    <tbody id="msgs">
      
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
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script>

<script>
/*分页的实现*/
$(function(){

	/*初始化*/
	var counter = 0; /*计数器*/
	var pageStart = 0; /*offset*/
	var pageSize = 10; /*size*/
	
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
			url: 'MsgList'+ '?' +'offset=' +offset + '&size=' + size,
			dataType: 'json',
			success: function(msgs){
				/* 每次读取数据个数 */
				sum=msgs.length;
				$("#count").html(sum);
				/* 实现页面的拼接 */
				var result = '';
				/************业务逻辑块：实现拼接html内容并append到页面*****************/				
				 console.log("offset:"+offset ,"size:"+ size, "sum:"+sum,"counter:"+counter);
				 $.each(msgs,function(index,msg){
					 console.log(index,msg);
					
				 	result+="<tr class='text-c'><td><input name='' type='checkbox' value=''></td>"+
					 		"<td>"+msg.msgid+"</td>"+
					 		"<td>"+msg.author+"</td>"+			
							"<td>"+msg.email  +"</td>"+
							"<td>"+msg.content  +"</td>"+						 
							"<td>"+msg.datetime +"</td>"+
							"<td>"+msg.msgip+"</td>"+ 
							"<td><a href=\"${pageContext.request.contextPath}/admin/MsgDel?msgid="+msg.msgid+"\"onclick=\"return confirm('确定删除吗？');\" title='删除'><i class='icon-trash'></i></a>"+
							"</td>"+
							"</tr>";
									
				 });
				/* 将新读取的页面拼接到页面 */
				$('#msgs').html(result);
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>
</html>