<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<script>
$(document).ready(function(){
	
    commentList(); //페이지 로딩시 댓글 목록 출력 
    
    $('#submitBtn').click(function(){ //댓글 등록 버튼 클릭시 
	    var insertData = $('#new_comment').serialize(); //commentInsertForm의 내용을 가져옴
	    commentInsert(insertData); //Insert 함수호출(아래)
	    console.log("등록 버튼 클릭");
	});
	 
});

var bno = '${board.board_no}'; //게시글 번호

//댓글 목록 
function commentList(){
    $.ajax({
        url : '/comment/list.do',
        type : 'get',
        data : {'board_no':bno},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.comments_no+'">'+'댓글번호 : '+value.comments_no+' / 작성자 : '+value.user_nick;
                a += '<a onclick="commentUpdate('+value.comments_no+',\''+value.content+'\');"> 수정 </a>';
                a += '<a onclick="commentDelete('+value.comments_no+');"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.comments_no+'"> <p> 내용 : '+value.comments +'</p>';
                a += '</div></div>';
            });
            
            $(".commentList").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert(insertData){
	
    $.ajax({
        url : '/comment/write.do',
        type : "POST",
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('#comment').val("댓글을 통해서 궁금증과 설레임을 같이 나눠 보아요.");
            }
        }
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(cno, content){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+cno+'" value="'+content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+cno).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(cno){
    var updateContent = $('[name=content_'+cno+']').val();
    
    $.ajax({
        url : '/comment/update',
        type : 'post',
        data : {'content' : updateContent, 'cno' : cno},
        success : function(data){
            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(cno){
    $.ajax({
        url : '/comment/delete/'+cno,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(bno); //댓글 삭제후 목록 출력 
        }
    });
}

</script>


