<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- style -->
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript">
	var img = '${plaview.img }';
	var splitted = img.split("-");

	$(".img").val(splitted[0]);
	
	

	$(document).ready(function() {
		$("#btnList").click(function() {
			location.href = '/place/placeList.do';
		});
		$("#btnUpdate").click(function() {
			location.href = '/place/placeUpdate.do?pla_no=${plaview.pla_no}';
		});
		$("#btnDelete").click(function() {
			location.href = '/place/placeDelete.do?pla_no=${plaview.pla_no}';
			alert("삭제되었습니다.");
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">

		
		<input type="hidden" id="pla_no" name="pla_no"
			value="${plaview.pla_no }"><br> <input type="hidden"
			id="com_id" name="com_id" value="${plaview.com_id }">
		<div class="placeinfo">
			<div class="place_img">
				<img src="/resources/img/${plaview.img }" class="img" width="100%">
				
			</div>
		

			
			<div class="heading" >
				<h3>시설안내</h3>
			
				<ul class="info_list ">
					<li>장소이름 :<span>${plaview.pla_name}</span></li>

					<li>장소주소 :<span>${plaview.pla_address}</span></li>

					<li>장소대여비용 :<span>${plaview.pla_money}</span></li>

					<li >장소 연락처 :<span>${plaview.pla_phone}</span></li>

					<li >장소운영시간 :<span>${plaview.pla_time}</span></li>

					<li>장소 예약 상태 :<span>${plaview.pla_statue}</span></li>

					<li>오픈시간 :<span>${plaview.pla_start}시</span></li>

					<li>닫는시간 :<span>${plaview.pla_end}시</span></li>

					<li>수용가능인원 :<span>${plaview.pla_people}명</span></li>


				</ul>
				<br>

				<c:choose>
					<c:when test="${userid eq plaview.com_id }">
						<button class="btn btn-default" id="btnList">목록보기</button>
						<button class="btn btn-default" id="btnUpdate">수정하기</button>
						<button class="btn btn-default" id="btnDelete">삭제하기</button>
					</c:when>

					<c:when test="${userid ne plaview.com_id }">
						<button class="btn btn-default" id="btnList">목록보기</button>

					</c:when>
				</c:choose>
			</div>
			
<!-- 			예약된 목록 -->
				
			<div class="container">
					<table class="table  .table-condensed ">
						<thead>
							<tr>
								<td>사용자아이디</td>
								<td>예약인원</td>
								<td>대여시작시간</td>
								<td>대여종료시간</td>
								<td>대여신청날짜</td>
							</tr>
						</thead>
						<tbody>
						<c:if test="${empty  reser }">
							
								<td><span >예약된 정보가 없습니다</span></td>
							
						</c:if>
						<c:forEach items="${reser }" var="r">
								<tr>
									<td>${r.u_id }</td>
									<td>${r.personnel }</td>
									<td>${r.rstart }</td>
									<td>${r.rend }</td>
									<td><fmt:formatDate value="${r.reserDate }"
											pattern="yyyy-MM-dd" /></td>


								</tr>
								
							</c:forEach>

						</tbody>

					</table>
				</div>
				</div>
			</div>
		
</body>
</html>