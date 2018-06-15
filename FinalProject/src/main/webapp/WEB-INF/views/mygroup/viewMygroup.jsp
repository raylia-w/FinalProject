<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnBack").click(function(){
		location.href="/mygroup/mygroup.do"	
	});
});
function deleteGroup(idx) {
	location.href="/mygroup/mygroupDelete.do?group_no="	+idx;
}
</script>

</head>
<body>

<section id="content">
<form action="#" class="form-ad">
<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="page-ads box">
<div class="post-header">
<h5 style="text-align: center; color: #ff4f57;">모임을 삭제하시겠습니까?</h5>
</div>
<div class="divider"><h3>모임 정보</h3></div>
<div class="form-group">
<input type="hidden" id="group_no" value="${mygroup.group_no}">
<label class="control-label" for="textarea">개 설 자</label>
<input type="text" class="form-control" id="u_id" name="u_id" readonly="readonly" value="${mygroup.u_id}" />
</div>
<div class="form-group">
<label class="control-label" for="textarea">모임 이름</label>
<input type="text" class="form-control" id="group_id" name="group_id" readonly="readonly" value="${mygroup.group_id}"/>
</div>
<div class="form-group">
<label class="control-label" for="textarea">지 역</label>
<input type="text" class="form-control" id="location" name="location" readonly="readonly" value="${mygroup.location}">
</div>
<div class="form-group">
<label class="control-label" for="textarea">대 분 류</label>
<input type="text" class="form-control" id="main_cat" name="main_cat" readonly="readonly" value="${mygroup.main_cat}"/>
</div>
<div class="form-group">
<label class="control-label" for="textarea">소 분 류</label>
<input type="text" class="form-control" id="small_cat" name="small_cat" readonly="readonly" value="${mygroup.small_cat}"/>
</div>
<div class="form-group">
<label class="control-label" for="textarea">인 원</label>
<input type="text" class="form-control" id="personnel" name="personnel" readonly="readonly" value="${mygroup.personnel}"/>
</div>
<div class="form-group">
<label class="control-label" for="textarea">소 개 글</label>
<input type="text" class="form-control" id="intro" name="intro" readonly="readonly" value="${mygroup.intro}"/>
</div>
<div class="form-group" style="margin-left: 350px;">
<c:if test="${userid eq mygroup.u_id}">
<input type="button" class="btn btn-common" id="btnMygroupDelete" onclick="deleteGroup(${mygroup.group_no});" value="모임삭제">
</c:if>
<input type="button" class="btn btn-common" id="btnBack" value="뒤로" style="background: #ff9d02;">	
</div>
</div>
</div>
</div>
</div>
</form>
</section>
</body>
</html>