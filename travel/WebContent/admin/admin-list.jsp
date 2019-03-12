<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="Cache-Control" content="no-siteapp" />
 
<link type="text/css" rel="stylesheet" href="css/H-ui.css"/>
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css"/>
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css"/>
 
<title>管理员管理</title>
</head>
<body>
<nav class="Hui-breadcrumb"><i class="icon-home"></i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="icon-refresh"></i></a></nav>
<div class="pd-20">
  <div class="cl pd-5 bg-1 bk-gray mt-20">
    <span class="l">
      
      <a class="btn btn-primary radius" href="javascript:;" onClick="admin_role_add('750','400','添加管理员','admin-add.jsp')"><i class="icon-plus"></i> 添加管理员</a>
    </span>
    <span class="r">共有数据：<strong id="count"></strong> 条</span>
  </div>
  <table class="table table-border table-bordered table-bg">
    <thead>
      <tr>
        <th scope="col" colspan="8">管理员列表</th>
      </tr>
      <tr class="text-c">
        <th width="25"><input type="checkbox" name="" value=""></th>
        <th width="40">ID</th>
        <th width="150">登录名</th>
        <th width="150">邮箱</th>
        <th width="50">性别</th>
        <th width="100">加入时间</th>
        <th width="100">IP地址</th>
        <th width="70">操作</th>
      </tr>
    </thead>
    <tbody id="users">
      <!-- <tr class="text-c">
        <td><input type="checkbox" value="1" name=""></td>
        <td>1</td>
        <td>admin</td>
        <td>www@qq.com</td>
        <td> 男 </td>
        <td>2014-6-11 11:11:42</td>
       
        <td class="f-14 admin-manage">
     	    
        	<a title="编辑" href="javascript:;"  onClick="admin_role_add('700','350','管理员信息编辑','admin-edit.html')" class="ml-5" style="text-decoration:none"><i class="icon-edit"></i></a> 
        	<a title="删除" href="javascript:;"  onClick="admin_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="icon-trash"></i></a>
        	<a title="修改密码"  href="javascript:;" onClick="admin_role_add('500','360','管理员密码修改','admin-edit-pwd.html')" class="ml-5" style="text-decoration:none">密码修改</a>	
        </td>
      </tr> -->
      
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
			url: 'UserList'+ '?' +'offset=' +offset + '&size=' + size,
			dataType: 'json',
			success: function(users){
				/* 每次读取数据个数 */
				sum=users.length;
				$("#count").html(sum);
				/* 实现页面的拼接 */
				var result = '';
				
				/************业务逻辑块：实现拼接html内容并append到页面*****************/
				
				console.log("offset:"+offset ,"size:"+ size, "sum:"+sum,"counter:"+counter);
 
				/*******************************************/
			 		
				 $.each(users,function(index,user){
					 console.log(index,user);
							 
					 
				 	result+="<tr class='text-c'><td><input name='' type='checkbox' value=''></td>"+
							"<td>"+user.userid+"</td>"+
					 		"<td>"+user.username+"</td>"+			
							"<td>"+user.email+"</td>"+
							"<td>"+user.gender+"</td>"+						 
							"<td>"+user.register_time+"</td>"+
							"<td>"+user.register_ip+"</td>"+ 
							"<td><a title='编辑' href='javascript:;'  onClick=\"admin_role_add('700','350','管理员信息编辑','admin-edit.jsp?userid="+user.userid+"')\" class='ml-5' style'text-decoration:none'><i class='icon-edit'></i></a>"+
							"&nbsp;&nbsp;<a href=\"${pageContext.request.contextPath}/admin/UserDel?userid="+user.userid+"\"onclick=\"return confirm('确定删除吗？');\" title='删除'><i class='icon-trash'></i></a>"+
							"&nbsp;<a title='修改密码'  href='javascript:;' onClick=\"admin_role_add('500','360','管理员密码修改','admin-edit-pwd.jsp?userid="+user.userid+"')\" class='ml-5' style='text-decoration:none'>密码修改</a>"+
							"</td>"+
							"</tr>";
									
				 });
				/* 将新读取的页面拼接到页面 */
				$('#users').html(result);
				
			},
			error: function(xhr, type){
				alert('Ajax error!');
			}
		});
	}
});
</script>

</html>