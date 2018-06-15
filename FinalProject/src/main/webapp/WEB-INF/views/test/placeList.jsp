<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- style -->
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/style.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<div class="container">

		<c:forEach items="${list }" var="pla">

			<div id="inner" style="border: 1px solid #eee; height: 350px; width: 300px; float: left; margin-right: 50px; margin-bottom: 10px;">
				<a href="/place/placeView.do?pla_no=${pla.pla_no }">

					<div class="info_img"  >
						<img alt="장소이미지" src="/resources/img/${pla.img }" style="overflow: hidden; height: 245px; width: 300px;">
					</div>
					<div class="info_area">
						<h3 class="title">${pla.pla_name }</h3>
						<div class="tag">
							<span class="tag_name">${pla.pla_address }</span>
						</div>

					</div>

					<div class="info_price_hour">
						<strong class="price">${pla.pla_time }</strong> <span
							class="txt_unit">원/시간</span>

					</div>
				</a>
			</div>


		</c:forEach>
	</div>
	<jsp:include page="/WEB-INF/views/util/paging.jsp" />

</body>
</html>