<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>


<link rel="stylesheet" href="/resources/css/jquery-ui.css" />
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#close").click(function(){
		self.close();
	});
});
</script>
</head>
<body>
<p style="text-align: center;">정모 목록</p>
<div data-page="reviews-index" class="page product_57b177c8e76f681b4a000003 reviews index">
	<div class="page-content">
		<div class="page-content-inner">
			<div class="content-block product-block">
				<a href="" id="close" i class="btn btn-common btn-sm" style="margin-left: 350px; background: #ff9d02;">
					모임 상세 페이지로 돌아가기
				</a>        
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th style="text-align: center;">아이디</th>
						<th style="text-align: center;">탈퇴를 하시겠습니까?</th>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="i">
					<tr>
						<td style="text-align: center;">${i.u_id }</td>
						<td style="text-align: center;"><a href="/group/secession.do?group_no=${i.group_no }&u_id=${i.u_id}">탈퇴</a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div id="mask"></div>
</body>
</html>