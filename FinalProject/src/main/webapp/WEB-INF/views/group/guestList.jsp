<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정모 참가 인원 목록</title>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

</head>
<body>
<table class="table table-striped table-hover">
	<thead>
		<tr>
			<td>아이디</td>
		</tr>
	</thead>
	<c:forEach items="${list }" var="i">
	<tbody>
		<tr>
			<td>${i.user_id }</td>
		</tr>
	</tbody>
	</c:forEach>
</table>
</body>
</html>