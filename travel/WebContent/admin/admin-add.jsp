<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>管理员添加</title>
<link type="text/css" rel="stylesheet" href="css/H-ui.css" />
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />

</head>
<body>
	<div class="pd-20">
  <form class="Huiform" id="loginform" action="${pageContext.request.contextPath}/admin/UserAdd" method="post">
    <table class="table table-border table-bordered table-bg">
      <thead>
        <tr>
          <th colspan="2">添加管理员</th>
        </tr>
      </thead>
      <tbody>
      	<tr>
          <th class="text-r" width="30%">用户名：</th>
          <td><input name="username" id="username" class="input-text" type="text" autocomplete="off" placeholder="用户名" tabindex="1" datatype="*4-16" nullmsg="请输入用户名！" errormsg="4~16个字符，区分大小写！"> 
          </td>
        </tr>
      
        <tr>
          <th class="text-r" width="30%">邮箱：</th>
          <td><input name="email" id="email" class="input-text" type="text" autocomplete="off" placeholder="邮箱" tabindex="1" datatype="*4-16" nullmsg="请输入邮箱！" errormsg="邮箱格式不正确！"> 
          </td>
        </tr>
        <tr>
          <th class="text-r">性别：</th>
          <td><input name="gender" id="gender" class="input-text" type="text" autocomplete="off" placeholder="性别" tabindex="2"   nullmsg="请输入性别！"> 
          </td>
        </tr>
        <tr>
          <th class="text-r">设置密码：</th>
          <td><input name="password" id="password" class="input-text" type="password" autocomplete="off" placeholder="设置密码" tabindex="3" datatype="*4-16" nullmsg="请输入您的密码！" errormsg="4~16个字符，区分大小写！"> 
          </td>
        </tr>
        <tr>
          <th></th>
          <td>
            <button type="submit" class="btn btn-success radius" id="admin-password-save" name="admin-password-save"><i class="icon-ok"></i> 确定</button>
          </td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>
	<script type="text/javascript" src="layer/layer.min.js"></script>
	<script type="text/javascript" src="js/H-ui.js"></script>
	<script type="text/javascript" src="js/H-ui.admin.js"></script>
	<script type="text/javascript">
		$(".Huiform").Validform();
	</script>

</body>
</html>