<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
<script type="text/javascript">
window.onload = function() {
	document.getElementById("cancel").onclick = function() {
		history.back(-1);
	};
};
</script>
</head>
<body>

<div id="content" class="my-account">
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-6 cd-user-modal">
<div class="my-account-form">
<ul class="cd-switcher">
<li><a class="selected" href="/user/login.do">USER LOGIN</a></li>
<li><a href="/company/login.do">COMPANY LOGIN</a></li>
</ul>

<!-- user login -->
<div id="cd-login" class="is-selected">
<div class="page-login-form">
<form action="/user/login.do" method="post" role="form" class="login-form">
<div class="form-group">
<div class="input-icon">
<i class="ti-user"></i>
<input type="text" id="u_id" name="u_id" class="form-control" placeholder="UserId">
</div>
</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-lock"></i>
<input type="password" id="u_pw" name="u_pw" class="form-control" placeholder="UserPassword">
</div>
</div>
<button class="btn btn-common log-btn">Login</button>
<button type="reset" id="cancel" class="btn btn-common log-btn">Cancel</button>
</form>
</div>
</div>

<!-- company login -->
<div id="cd-signup">
<div class="page-login-form register">
<form action="/company/main.do" method="post" role="form" class="login-form">
<div class="form-group">
<div class="input-icon">
<i class="ti-user"></i>
<input type="text" id="com_id" name="com_id" class="form-control" placeholder="CompanyId">
</div>
</div>
<div class="form-group">

</div>
<div class="form-group">
<div class="input-icon">
<i class="ti-lock"></i>
<input type="password" id="com_pw" name="com_pw" class="form-control" placeholder="CompanyPassword">
</div>
</div>

<button id="login" class="btn btn-common log-btn">Login</button>

</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>