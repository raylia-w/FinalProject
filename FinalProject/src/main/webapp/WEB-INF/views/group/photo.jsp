<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
   
//    $("#layerpop").dialog({
//       autoOpen:false,
//       width:500,
//       buttons:[{
//          text:"확인",
//          click:function(){
//             $("#photoUpload").submit();
//             $("#mask, window").hide();
//             $(this).dialog("close");
//          }
//       }, {
//          text:"취소",
//          click:function(){
//             $(this).dialog("close");
//             $("#mask, .window").hide();
            
//          }
//       }]
//    });
//    $("mask").click(function(){
//       $(this).hide();
//       $(".window").hide;
//       $(this).dialog("close");
//    });
   
//    $("#popbutton").click(function(e){
//       wrapWindowByMask();
//       $('#layerpop').dialog('open');
//       e.preventDefault();
//    });
//    $("#imgBtn").button();
});

// function wrapWindowByMask(){
//    var maskHeight = $(document).height();
//    var maskWidth = $(window).width();
   
//    $("#mask").css({"width":maskWidth, "height":maskWidth});
   
//    $("#mask").fadeTo("slow", 0.8);
// }
function showPopup(uid, gno) { 
	window.open("/group/photoUpload.do?group_no="+gno+"&user_id="+uid, "사진 업로드", "width=400, height=300, left=100, top=50"); 
}
function deletePhoto(pno, oname, gno){
   location.href="/group/photo/delete.do?photo_no="+pno+"&original_name="+oname+"&group_no="+gno;
}
</script>
<style>
#mask{
   position:absolute;
   left:0;
   top:0;
   z-index:1;
   background-color:#000;
   display:none;
}
</style>
</head>
<body>

<section id="blog" class="section">
<div class="container">
<div class="field account-sign-in"> 
<a href="/group/main.do?group_no=44">
<div class="btn btn-common btn-sm" style="background: #FF6347;"><i class="ti-key">모임 정보 보기로 돌아가기</i></div>
</a>   
</div> 
<h2 class="section-title">
<button style="background: #E9646B;" class="btn btn-common btn-rm" onclick="showPopup('${user_id}', '${group.group_no}')">사진 등록</button><br/>
</h2>
<h3 class="widget-title" style="text-align: center;">PHOTOS ${count }개</h3>
<div class="row">
<c:if test="${count ne 0}">
<c:forEach items="${list }" var="photo" varStatus="cnt">
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 blog-item">
<div class="blog-item-wrapper">
<div class="blog-item-img">
<a href="single-post.html">
<img src="/resources/upload/${photo.original_name }" alt="${photo.original_name }" onclick="resizeImg(this.src)">
</a>
</div>
<div class="blog-item-text">
<figure>
<div class="meta-tags">
<i class="ti-calendar"></i> <figcaption>${photo.user_id } / ${photo.upload_date }</figcaption>
<c:if test="${user_id eq photo.user_id }">
<button class="btn btn-common" onclick="deletePhoto('${photo.photo_no}', '${photo.original_name }', '${photo.group_no }')">삭제</button>
</c:if>
</div>
</figure>
</div>
</div>
</div>
</c:forEach>
</c:if>
</div>
</div>
</section>
</body>