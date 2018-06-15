<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

function boardDelete(bno){
// 	console.log(bno);
	location.href="/group/notice/delete.do?board_no="+bno;
}

</script>
</head>
<body class="theme-red ">
<div data-page="comments-index" class="page product_57b177c8e76f681b4a000003 comments index">

  <div class="page-content">
  	<div class="page-content-inner">
  		<div class="content-block product-block">
          <a href="/group/main.do?group_no=${group_no}">
            <i class="material-icons arrow_back"></i>모임 상세 페이지로 돌아가기</a>
            <p>메인화면에 가장 최근 작성한 공지가 노출됩니다.</p>
        </div>
        <div class="content-block">
        	<a class="button button-big" href="/group/notice/write.do">
        		<i class="material-icons forum"></i> 공지글을 작성하여 멤버들과 정보를 나눠보아요.
        	</a>
        </div>
        </div>
        <div class="content-block-title text-title">게시글 ${count }개</div>
        <c:forEach items="${list}" var="board" varStatus="cnt">
        <div class="comment-block">
        	<div class="card comment-card comment_5983affe532c2841712b03e9">
        		<div class="card-header">
        			<div class="title">${board.title }</div>
        			<div class="name">${board.user_id }</div><!-- 작성자 닉네임 -->
      
        			<div class="date">${board.written_date }
        			<c:if test="${user_id eq board.user_id }">
        			<button class="btn" onclick="boardDelete(${board.board_no})">삭제</button>
        			</c:if>
        			</div><!-- 작성일 -->
        		</div>
        		<div class="card-content">
        			<div class="card-content-inner">
        				${board.content }
        			</div>
        		</div>
        		<div class="list-block media-list children-block">
        			<ul>
        			</ul>
        		</div>
        	</div>	
		</div>
		</c:forEach>
	</div>
</div>
<%-- <jsp:include page="../util/paging.jsp"></jsp:include> --%>
</body>
</html>