<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!-- JSTL List 받아와서 for문 -->
<!-- 수정 내용 시작 -->
<div class="job-alerts-item candidates">
<h3 class="alerts-title" style="text-align: center;">검색 결과</h3>
<div class="alerts-list">
<div class="row">
<div class="col-md-1"> 
<p style="text-align: center;">그룹 번호</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">그룹 아이디</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">시 / 도</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">시 / 군 / 구</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">대 분 류</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">소 분 류</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">정 원</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">User Id</p>
</div>
<div class="col-md-4">
<p style="text-align: center;">소 개 글</p>
</div>
</div>
</div>
<c:forEach items="${keysearch }" var="k">
<div class="alerts-content">
<div class="row">
<div class="col-md-1"> 
<p style="text-align: center;">${k.group_no }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.group_id }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.location }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.location_cat }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.main_cat }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.small_cat }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.personnel }</p>
</div>
<div class="col-md-1">
<p style="text-align: center;">${k.manager_id }</p>
</div>
<div class="col-md-4">
<p style="text-align: center;">${k.intro }</p>
</div>
</div>
</div>
</c:forEach>
</div>
<!-- 수정 내용 끝 -->