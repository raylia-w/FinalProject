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
	
	$("#dialogLayout").dialog({
		autoOpen:false,
		width:500,
		button:[{
			text:"확인",
			click:function(){
				$(this).dialog("close");
			}
		}, {
			text:"취소",
			click:function(){
				$(this).dialog("close");
			}
		}]
	});
	
	$("#popbutton").click(function(){
		$('#layerpop').dialog('open');
	});
});
</script>
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
			<div class="content-block-title text-title">사진 9개</div>
			<div class="review-block">
				<div class="card review-card review_591f9674532c28793338d0b3">
					<div class="card-content">
						<div class="card-content-inner"></div>
						<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/34/11/591f9698532c28793338d0b4/small_20170519_193602_HDR.jpg" alt="Small 20170519 193602 hdr"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="layerpop" >
	<div class="modal-dialog"> 
		<div class="modal-content"> 
			<!-- header -->
			<div class="modal-header"> 
				<!-- 닫기(x) 버튼 --> 
				<button type="button" class="close" data-dismiss="modal">×</button> 
				<!-- header title --> 
				<h4 class="modal-title">Header</h4> </div> 
				<!-- body --> 
				<div class="modal-body"> Body </div> 
				<!-- Footer --> 
				<div class="modal-footer"> Footer 
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div> 
			</div>
		</div> 
	</div>
</body>