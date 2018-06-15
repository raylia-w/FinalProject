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
<!-- BODY -->

<section id="slider">
<div class="tp-banner-container">
<div class="tp-banner">
<ul>
<li data-transition="fade" data-slotamount="7" data-masterspeed="2000" data-thumb="/resources/css/assets/img/main1.png">
<img src="/resources/css/assets/img/main1.png" alt="laptopmockup_sliderdy" data-lazyload="/resources/css/assets/img/main1.png">
<div class="tp-caption mediumHeading h2 lft tp-resizeme rs-parallaxlevel-0 start" data-x="center" data-y="center" data-voffset="-50" data-speed="1200" data-start="1000" data-easing="Back.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="400" style="z-index: 11;">
<h2 style="min-height: 0px; min-width: 0px; line-height: 30px; border-width: 0px; margin: 0px 0px 20px; padding: 0px; letter-spacing: 2px; font-weight: 900; font-size: 52px; color: #fff; text-transform: uppercase;">Looking For A Job?</h2>
</div>
<div class="tp-caption detailText p lfl tp-resizeme start" data-x="center" data-y="center" data-voffset="10" data-speed="1200" data-start="1500" data-easing="easeInOutExpo" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300" style="text-align: center; z-index: 8; color: #fff;">
<p style="font-size: 15px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
<br style="font-size: 12px;">consectetur adipisicing elit.</p>
</div>
<!-- search 클릭 시 키워드로 검색 -->
<div class="carousel-caption">
<div class="widget widget-search">
<form action="/tiles/search.do" method="get" id="searchForm">
<input type="text" name="keyword" class="form-control search" placeholder="모임을 검색해보세요" required="required" />
<button id="search" class="search-btn" type="button" value="Search"><i class="fa fa-search" style="margin-top: -38px;"></i></button>
</form>
</div>
</div>
      
</li>
<li data-transition="slideup" data-slotamount="7" data-masterspeed="800" data-thumb="/resources/css/assets/img/main2.png">
<img src="/resources/css/assets/img/main2.png" alt="laptopmockup_sliderdy" data-lazyload="/resources/css/assets/img/main2.png">
<div class="caption title sfb tp-caption start" data-x="center" data-y="center" data-voffset="-50" data-speed="400" data-start="800" data-easing="easeOutExpo">
<h2 style="min-height: 0px; min-width: 0px; line-height: 94px; border-width: 0px; margin: 0px 0px 20px; padding: 0px; letter-spacing: 2px; font-size: 52px; font-weight: 900; color: #fff; text-transform: uppercase;">12000+ Jobs Waiting</h2>
</div>
<div class="caption text p sfb tp-caption start" data-x="center" data-y="center" data-voffset="10" data-speed="400" data-start="1200" data-easing="easeOutExpo" style="z-index: 8; color: #fff; text-align: center;">
<p style="font-size: 15px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
<br style="font-size: 12px;">consectetur adipisicing elit.</p>
</div>
<!-- search 클릭 시 키워드로 검색 -->
<div class="carousel-caption">
<div class="widget widget-search">
<form action="/tiles/search.do" method="get" id="searchForm">
<input type="text" name="keyword" class="form-control search" placeholder="모임을 검색해보세요" required="required" />
<button id="search" class="search-btn" type="button" value="Search"><i class="fa fa-search" style="margin-top: -38px;"></i></button>
</form>
</div>
</div>

</li>
</ul>
</div>
</div>
</section>

<!-- 모임 만들기 -->
<section class="infobox section">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="info-text">
<h2>자신의 이야기를 만드세요.</h2>
<p>무엇을 좋아하나요? 무엇을 하고 싶나요? 생각만 했던 일을 이루어보세요.</p>
</div>
<a href="/mygroup/groupRegistration.do" class="btn btn-border">모임 지금 만들어 보세요.</a>
</div>
</div>
</div>
 </section>

<!-- main category image 클릭 검색 -->
<section class="featured-jobs section">
<div class="container">
<h2 class="section-title">
So,Moim
</h2>
<div class="row">
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=공예/DIY">
<img src="/resources/css/assets/img/features/img-1.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=공예/DIY">공예/DIY</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 4 months ago</span>
<span><i class="ti-time"></i> Full Time</span>
<div class="view-iocn">
<a href="job-page.html"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=문화예술">
<img src="/resources/css/assets/img/features/img-2.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=문화예술">문화/예술</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 5 months ago</span>
<span><i class="ti-time"></i> Part Time</span>
<div class="view-iocn">
<a href="job-page.html"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=음악">
<img src="/resources/css/assets/img/features/img-3.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=음악">음악</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 3 months ago</span>
<span><i class="ti-time"></i> Full Time</span>
<div class="view-iocn">
<a href="job-page.html"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=여행">
<img src="/resources/css/assets/img/features/img-3.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=여행">여행</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 1 months ago</span>
<span><i class="ti-time"></i> Part Time</span>
<div class="view-iocn">
<a href="job-page.html"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=스포츠">
<img src="/resources/css/assets/img/features/img-2.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=스포츠">스포츠</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 6 months ago</span>
<span><i class="ti-time"></i> Full Time</span>
<div class="view-iocn">
<a href="job-page.html"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
<div class="col-md-4 col-sm-6 col-xs-12">
<div class="featured-item">
<div class="featured-wrap">
<div class="featured-inner">
<figure class="item-thumb">
<a class="hover-effect" href="/tiles/categoryGroup.do?main_cat=외국어">
<img src="/resources/css/assets/img/features/img-1.jpg" alt="">
</a>
</figure>
<div class="item-body">
<h3 class="job-title"><a href="/tiles/categoryGroup.do?main_cat=외국어">외국어</a></h3>
<div class="adderess"><i class="ti-location-pin"></i> 전체</div>
</div>
</div>
</div>
<div class="item-foot">
<span><i class="ti-calendar"></i> 7 months ago</span>
<span><i class="ti-time"></i> Part Time</span>
<div class="view-iocn">
<a href="/tiles/categoryGroup.do?main_cat=외국어"><i class="ti-arrow-right"></i></a>
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<script type="text/javascript">
$( "#search" ).click(function() {
	  alert( "검색 결과를 확인하세요!!" );
	  $("#searchForm").submit();
	});
</script>

</body>
</html>