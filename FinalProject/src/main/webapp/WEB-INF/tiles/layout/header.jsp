<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 18.06.10 header 변경 -->
<div class="header">
<section id="intro" class="section-intro">
<div class="logo-menu">
<nav class="navbar navbar-default main-navigation" role="navigation" data-spy="affix" data-offset-top="50">
<div class="container">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand logo" href="/tiles/main.do"><img src="/resources/css/assets/img/logo.png" alt=""></a>
</div>
<div class="collapse navbar-collapse" id="navbar">

<ul class="nav navbar-nav">
<li>
<a class="active" href="/tiles/main.do">
Home 
</a>
</li>

<c:if test="${comid eq null }">
<li>
<a href="/tiles/group.do">
모임  <i class="fa fa-angle-down"></i>
</a>
<ul class="dropdown">
<li>
<a href="/mygroup/groupRegistration.do">
모임 개설
</a>
</li>
<li>
<a href="/tiles/group.do">
모임 검색
</a>
</li>
<li>
<a href="/mygroup/mygroup.do">
내 모임
</a>
</li>
</ul>
</li>
</c:if>
<!-- 관리자 업체 목록 시작 -->
<c:if test="${comid ne null }">
<li>
<a href="/company/main.do">
업체 목록  <i class="fa fa-angle"></i>
</a>
</c:if>
<!-- 관리자 업체 목록 끝 -->

<c:if test="${comid eq null }">
<li>
<a href="/group/meeting/registration.do">
정모 <i class="fa fa-angle-down"></i>
</a>
<ul class="dropdown">
<li>
<a href="/group/meeting/registration.do">
정모 개설
</a>
</li>
<li>
<a href="#">
<%-- <a href="/group/meeting/list.do?group_no=${group.group_no }"> --%>
정모 리스트
</a>
</li>
</ul>
</li>
</c:if>
<!-- 업체 대여장소 등록 시작 -->
<c:if test="${comid ne null }">
<li>
<a href="/place/placeInsert.do">
대여장소 등록 <i class="fa fa-angle"></i>
</a>
</c:if>
<!-- 업체 대여장소 등록 끝 -->

<c:if test="${comid eq null }">
<li>
<a href="/tiles/main.do">
공지사항 <i class="fa fa-angle-down"></i>
</a>
<ul class="dropdown">
<li>
<a href="post-job.html">
Add Job
</a>
</li>
<li>
<a href="manage-jobs.html">
Manage Jobs
</a>
</li>
<li>
<a href="manage-applications.html">
Manage Applications
</a>
</li>
<li>
<a href="browse-resumes.html">
Browse Resumes
</a>
</li>
</ul>
</li>
<li>
</li>
</c:if>
<!-- 업체 Q&A 시작 -->
<c:if test="${comid ne null }">
<li>
<a href="/company/main.do">
Q&A <i class="fa fa-angle"></i>
</a>
</c:if>
<!-- 업체 Q&A 끝 -->

</ul>
<ul class="nav navbar-nav navbar-right float-right">
<li class="left"><a href="/user/join.do"><i class="ti-pencil-alt"></i> User Join</a></li>
<li class="left"><a href="/company/join.do"><i class="ti-pencil-alt"></i>Company Join</a></li>
<c:if test="${userid eq null && comid eq null}">
<li class="right"><a href="/tiles/login.do"><i class="ti-lock"></i> Log In</a></li>
</c:if>
<c:if test="${userid ne null }">
<li class="right"><a href="/user/logout.do"><i class="ti-lock"></i> Log Out</a></li>
</c:if>
<c:if test="${comid ne null }">
<li class="right"><a href="/user/logout.do"><i class="ti-lock"></i> Log Out</a></li>
</c:if>
</ul>
</div>
</div>
</nav>
<div class="navmenu navmenu-default navmenu-fixed-left offcanvas">
<div class="close" data-toggle="offcanvas" data-target=".navmenu">
<i class="ti-close"></i>
</div>
</div>
</div>
</section>
</div>