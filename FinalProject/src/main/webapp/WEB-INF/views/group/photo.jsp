<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
<!-- <link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css"> -->
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="/resources/css/jquery-ui.css" />
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$("#layerpop").dialog({
		autoOpen:false,
		width:500,
		buttons:[{
			text:"확인",
			click:function(){
				$("#photoUpload").submit();
				$(this).dialog("close");
			}
		}, {
			text:"취소",
			click:function(){
				$(this).dialog("close");
				$("#mask, .window").hide();
			}
		}]
	});
	$("mask").click(function(){
		$(this).hide();
		$(".window").hide;
	});
	
	$("#popbutton").click(function(e){
// 		wrapWindowByMask();
		$('#layerpop').dialog('open');
		e.preventDefault();
	});
});

function wrapWindowByMask(){
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
	
	$("#mask").css({"width":maskWidth, "height":maskWidth});
	
	$("#mask").fadeIn(1000);
	$("#mask").fadeTo("slow", 0.8);
}
</script>
<style>
#mask{
	position:absolute;
	left:0;
	top:0;
	z-index:9000;
	background-color:#000;
	display:none;
}
</style>
</head>
<body class="theme-red ">
<div data-page="reviews-index" class="page product_57b177c8e76f681b4a000003 reviews index">
	<div class="page-content">
		<div class="page-content-inner">
			<div class="content-block product-block">
				<a href="/p/57b177c8e76f681b4a000003">
					<i class="material-icons arrow_back"></i>
					모임 상세 페이지로 돌아가기
				</a>        
			</div>
			<button class="btn btn-default" id="popbutton">사진 등록</button><br/> 
			<div class="content-block-title text-title">사진 ${count }개</div>
			<div class="review-block">
				<c:if test="${count ne 0}">
					<c:forEach items="${list }" var="photo">
					<div class="card review-card review_591f9674532c28793338d0b3">
						<div class="card-content">
							<div class="card-content-inner"></div>
							<div class="photo col-25"><img src="/resources/upload/${photo.original_name }"></div>
						</div>
					</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div id="layerpop" title="사진 등록">
	<form action="/group/photo/upload.do" id="photoUpload" enctype="multipart/form-data" method="post">
		<label for="사진 선택"><input type="file" id="file" name="file" value="사진"/></label>
		<input type="hidden" id="group_no" name="group_no" value=${group.group_no }>
		<input type="hidden" id="user_nick" name="user_nick" value=${user_nick }>
	</form>
</div>
<div id="mask"></div>
</body>