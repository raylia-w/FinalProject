<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>
<script type="text/javascript">

function boardDelete(bno){
	location.href="/group/board/delete.do?board_no="+bno;
}

</script>
</head>
<body>

  <div>
  	<div>
  		<div>
          <a href="/group/main.do?group_no=${group_no}">
            <i class="material-icons arrow_back"></i>모임 상세 페이지로 돌아가기</a>
        </div>
        <div>
        	<a class="button button-big" href="/group/board/write.do?group_no=${group_no}">
        		<i class="material-icons forum"></i> 게시글을 통해서 설레임을 같이 나눠 보아요.
        	</a>
        </div>
        </div>
        <div>게시글 ${count }개</div>
        <c:forEach items="${list}" var="board" varStatus="cnt">
        <div>
        	<div >
        		<div>
        			<div class="title">${board.title }</div>
        			<div class="name">${board.user_id }</div><!-- 작성자 닉네임 -->
        			<div class="date">${board.written_date }
        			<c:if test="${user_id eq board.user_id }">
        				<div class="delete"><button class="btn" onclick="boardDelete(${board.board_no})">삭제</button></div>
        			</c:if>
        			</div>
  			   		</div>
  	    		<div>
        			<div>
        				${board.content }
        			</div>
        		</div>
        		<div class="list-block media-list children-block">
        			<ul>
        			</ul>
        		</div>
        		<form novalidate="novalidate" class="simple_form new_comment" id="new_comment${cnt.index }" action="/group/board/comments.do" accept-charset="UTF-8" data-remote="true" method="post"><input name="utf8" type="hidden" value="✓">
        			<div class="list-block inputs-list">
        				<ul>
        					<li>
        						<div class="item-content">
        							<div class="item-media">
        								<img width="35" class="img-circle" src="https://dppgjjx7k7m5m.cloudfront.net/uploads/user/image/2a/e0/5b04dc34532c2845f88f333b/thumb_img_profile.png" alt="Thumb img profile">
        							</div>
        							<div class="item-inner">
        								<div class="item-input-wrapper string required comment_body">
        									<div class="item-input item-input-field">
        										<input class="string required" placeholder="댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요." type="text" name="comments" id="comments${cnt.index }">
        										<input type="hidden" name="user_id" id="user_id${cnt.index }" value="${user_id }">
        										<input type="hidden" name="board_no" id="board_no${cnt.index }" value="${board.board_no }">
        									</div>
        									<input type="button" id="submitBtn${cnt.index }" value="등록">
        								</div>
        							</div>
        						</div>
        					</li>
        				</ul>
        			</div>	
        			<div class="container">
        				<div id="commentList${cnt.index }"></div>
        			</div>
        			
        			<%@ include file="comments.jsp" %>
        			<input type="hidden" value="5983affe532c2841712b03e9" name="comment[parent_id]" id="comment_parent_id">
        			<input type="hidden" value="57b177c8e76f681b4a000003" name="comment[product_id]" id="comment_product_id">
        		</form>
        	</div>	
		</div>
		</c:forEach>
	</div>
</div>
</body>
</html>