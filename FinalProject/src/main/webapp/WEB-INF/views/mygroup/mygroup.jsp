<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#Registration").click(function(){
		location.href = "/mygroup/groupRegistration.do"
	});
});
</script>

</head>
<body>

<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="blog-post">
<div class="blog-author">
<img src="assets/img/blog/author.jpg" alt="">
</div>
<div class="post-content">
<c:forEach items="${list }" var="i">
<h3 class="post-title">${i.group_id }</h3>
<div class="meta">
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> 대 분 류 : ${i.main_cat}</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i>소 분 류 : ${i.small_cat}</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i>시 / 도 : ${i.location}</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i>시 / 구 /군 : ${i.location_cat}</a></span>
</div>
<p>소 개 글<br>
${i.intro}</p>
</c:forEach>
</div>
</div>
</div>
</div>
</div>

</body>
</html>