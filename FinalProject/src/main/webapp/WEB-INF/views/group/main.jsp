<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=YiJfocqY2V0PLgrqvSkF"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=YiJfocqY2V0PLgrqvSkF&submodules=geocoder"></script>
<script type="text/javascript">
function list(){
	window.open('/group/manager/memberlist.do?group_no=${group.group_no}', '멤버 목록', 'width=1000, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=no');
}
</script>
</head>
<body>

<div class="container">
<div class="row">
<aside id="sidebar" class="col-md-3 right-sidebar">
<div class="widget widget-categories">
<h5 class="widget-title">메 뉴</h5>
<ul class="cat-list">
<li>
<a href="/group/meeting/list.do?group_no=${group.group_no }">(1) 정모 목록 <span class="num-posts"></span></a>
</li>
<li>
<a href="/group/board.do?group_no=${group.group_no }">(2) 게시판<span class="num-posts"></span></a>
</li>
<li>
<a href="/group/notice.do?group_no=${group.group_no }">(3) 공지 게시판<span class="num-posts"></span></a>
</li>
<li>
<a href="/group/photo.do?group_no=${group.group_no }">(4) 정모 사진 보기<span class="num-posts"></span></a>
</li>
</ul>
</div>

<div class="widget widget-popular-posts">
<h5 class="widget-title">최근 공지사항</h5>
<ul class="posts-list">
<li>
<div class="widget-content">
<a href="#">${notice.content }</a>
</div>
<div class="clearfix"></div>
</li>
</ul>
</div>
</aside>

<div class="col-md-9">
<div class="blog-post">
<div class="blog-author">
<img src="assets/img/blog/author.jpg" alt="">
</div>
<div class="post-content">
<h3 class="post-title">모 임 목 록</h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> ${group.group_id }</a></span>
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> ${group.main_cat }</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i> ${group.small_cat }</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i> ${group.location }</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i> 정원 ${group.personnel }명</a></span>
<span class="meta-part"><a href="#"><i class="ti-comment-alt"></i> 게시글 ${boardCount }개</a></span>

</div>
<p>소 개 글<br>
${group.intro }</p>

<c:choose>
<c:when test="${isMember <1 || userid eq null}">
<button class="btn btn-common" style="float:right;" onclick="location.href='/group/registration.do?group_no=${group.group_no}&u_id=${u_id}'">가입하기</button>
</c:when>
<c:when test="${group.manager_id eq userid }">
<button class="btn btn-common" style="float:right;" onclick="list()">회원 목록 보기</button>
</c:when>
<c:when test="${isMember >0}">
<button class="btn btn-common" style="float:right;" onclick="location.href='/group/secession.do?group_no=${group.group_no}&u_id=${u_id}'">탈퇴하기</button>
</c:when>
</c:choose>
</div>

<div class="post-content">
<h3 class="post-title">최 근 정 모 목 록</h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> 정모 참가 비용 ${meeting.fee }원</a></span>
<span class="meta-part"><i class="ti-user"></i><a href="#"> 정모 정원  ${meeting.personnel }명</a></span>
<span class="meta-part"><a href="#"><i class="ti-calendar"></i> 정모 일자 ${meeting.res_day }</a></span>
</div>
<p><strong>하나.</strong>  신청은 당일 2시간 전까지 가능합니다.<br>
<strong>둘.</strong>  매니저의  연락처는 모임 하루 전 오후 7시에 문자와 이메일로 공유됩니다.<br></p>

<p><strong>포함내용 : </strong>정모 참여 비용에는 간단한 먹거리와 사이트 수수료가 포함되어 있습니다.</p>

<a href="/group/meeting/list.do?group_no=${group.group_no }" class="btn btn-common" style="float:right;">정모 목록 보기</a>

</div>

<div class="post-content">
<h3 class="post-title"><a href="/group/board.do?group_no=${group.group_no }">최 근 게 시 글</a></h3>
<div class="col-md-4">
<p style="text-align: center;">제 목</p>
</div>
<div class="col-md-3">
<p style="text-align: center;">작 성 자</p>
</div>
<div class="col-md-3">
<p style="text-align: center;">작 성 일</p>
</div>
</div>

<div class="alerts-content">
<c:forEach items="${boardList}" var="board" begin="1" end="3" varStatus="cnt">
<div class="col-md-4">
<p style="text-align: center;">${board.title }</p>
</div>
<div class="col-md-3">
<p style="text-align: center;">${board.user_id }</p>
</div>
<div class="col-md-3">
<p style="text-align: center;">${board.written_date }</p>
</div>
</c:forEach>
</div>
</div>
</div>
</div>
</div>
			
		
</body>
<script>

	// map
	var coordinate = initGeocoder();

    var map = new naver.maps.Map("product-map", {
    	 scrollWheel: false,
         draggable: true,
         zoom: 11,
         minZoom: 5,
         maxZoom: 14,
         zoomControl: true,
         zoomControlOptions: {
           position: naver.maps.Position.TOP_RIGHT
         }
	});
    
    var circle = new naver.maps.Circle({
        map: map,
        center: map.getCenter(),
        radius: 150,
        fillColor: '#2196f3',
        fillOpacity: 0.3,
      });
    	
	function searchAddressToCoordinate(address) {
	    naver.maps.Service.geocode({
	        address: address
	    }, function(status, response) {
	        if (status === naver.maps.Service.Status.ERROR) {
	            return alert('Something Wrong!');
	        }
	        var item = response.result.items[0],
	            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
	            point = new naver.maps.Point(item.point.x, item.point.y);
	        	
	        	map.setCenter(point);
	    });
	}
	function initGeocoder() {
	    searchAddressToCoordinate('${group.location}');
	}

</script>


</html>
