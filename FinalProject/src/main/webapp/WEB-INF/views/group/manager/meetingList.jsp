<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
}); 

function list(meeting_no){
	window.open("/group/meeting/guestList.do?meeting_no="+meeting_no, "참가 멤버 목록");
}

function join(meeting_no, u_id){
	console.log(meeting_no, u_id);
	$.ajax({
		url:"/group/meeting/join.do",
		type:"post",
		data:{
			meeting_no:meeting_no,
			u_id:u_id
		},
		success:function(data){
			alert(data);
		}
	});
}
</script>
</head>
<body>
<div class="field account-sign-in" style="margin-left: 300px; margin-top: 50px;">

<a href="/group/main.do?group_no=${group.group_no }">
<div class="btn btn-common btn-sm" style="background: #FF6347;"><i class="ti-key">모임 정보 보기로 돌아가기</i></div>
</a>
<c:if test="${userid eq group.manager_id }">
<a href="/group/meeting/registration.do?group_no=${group.group_no }">
<div class="btn btn-common btn-sm" style="background: #FF6347;"><i class="ti-key">새 모임 등록하기</i></div>
</a>
</c:if>
</div> 
				    
<c:forEach items="${list}" var="i">
<div id="content">
<div class="container">
<div class="row">
<div class="col-md-14 col-sm-14 col-xs-14">
<div class="job-alerts-item">
<h4 class="alerts-title">정모 목록</h4>
<div class="applications-content">
<div class="row">
<div class="col-md-4">
<div class="thums">
</div>
<h3>장소</h3>
<span>${i.reservation_location }</span>
</div>
<div class="col-md-2">
<h3>정모일</h3>
<span>${i.res_day }</span>
</div>
<div class="col-md-2">
<h3>참가비</h3>
<span>${i.fee }</span>
</div>
<div class="col-md-2">
<h3>참가인원</h3>
<span><a href="#" onclick="list('${i.meeting_no }')" id="btn">${i.guest }</a></span>
</div>
<div class="col-md-2">
<h3>참가여부</h3>
<span><c:if test="${group.manager_id eq userid }">	
<a href="/group/meeting/cancel.do?meeting_no=${i.meeting_no }&res_day=${i.res_day}&group_no=${i.group_no}">취소</a>
</c:if>
<c:if test="${group.manager_id ne userid }">
<a href="#" onclick="join('${i.meeting_no}', '${uid }')">참가</a>
</c:if>
</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</c:forEach>

</body>
</html>