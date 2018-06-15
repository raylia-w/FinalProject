<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>

<section class="find-job section">
<div class="container">
<h2 class="medium-title col-md-offset-1">
장소 상세 정보
</h2>
<div class="row">
<div class="col-md-12 col-md-offset-1">
<div class="job-list">
<div class="thumb">
<img src="/resources/css/assets/img/jobs/img-1.jpg" alt=""></a>
</div>
<div class="job-list-content">
<h4>${plaview.pla_name}</h4>
<div class="job-tag">
<div class="pull-left">
<div class="meta-tag">
<span><i class="ti-location-pin"></i>${plaview.pla_address}</span>
<span><i class="ti-calendar"></i>${plaview.pla_statue} 휴무</span>
<span><i class="ti-time"></i>${plaview.pla_time} / ${plaview.pla_money}원</span>
<span><i class="ti-time"></i>${plaview.pla_start}시 ~ ${plaview.pla_end}시</span>
<span><i class="ti-user"></i>수용가능인원 : ${plaview.pla_people} 명</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

</body>
</html>