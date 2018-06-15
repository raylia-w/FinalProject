z<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.js"></script>
	
<script type="text/javascript">
 $(document).ready(function() {
	 $("#idcheck").click(function() {
		if($("#com_id").val() == null || $("#com_id").val() ==""){
			alert("아이디를 입력하세요");
			$("#com_id").focus();
			return ;
		}else{
			id = $("#com_id").val();
			$.ajax({
				type: "POST"
				, url: '/company/idCheck.do'
				, dataType: "json"
				, data: {"com_id":$("#com_id").val()}
				, success: function(data){
					console.log("---------------------"+data);
					if(data){
						alert("사용 가능한 아이디 입니다");
						idCheck = true;
					}else {
						alert("사용할 수 없는 아이디입니다");
						idCheck = false;
						$("#com_id").focus();
					}
				}, error:function(request, error) {
					console.log(request.responseText);
					console.log(error.printStackTrace);
				}
				
					
			});
		}
	 });
	 $("#join").click( function() {
			
		 if(!idcheck){
			 alert("아이디 중복확인을 해주세요")
			 $("#idcheck").focus();
			 return false;

		 }else if( $("#com_pw").val() == "" || $("#com_pwcheck").val == ""){
			 alert("비밀번호를 입력하세요");
			 $("#com_pw").focus();
			 return false;

		 }else if ( !($("#com_pw").val() == $("#com_pwcheck").val() ) ){
			 alert("비밀번호가 일치하지 않습니다");
			 $("#com_pw").focus();
			 return false;
		 }else if($("#com_email").val()==""){
				alert("이메일을 입력하세요");
				$("#com_email").focus();
				return false;
			}else if($("#com_name").val()==""){
				alert("이름을 입력하세요");
				$("#com_name").focus();
				return false;
			}
	 });
 });
</script>

<section id="content">
<div class="container" style="margin-top: -23px;">
<div class="row">
<div class="col-md-8 col-md-offset-2">
<fieldset>
<label>아직 회원이 아니신가요?</label>
</fieldset>
<form class="form-ad" action="/company/join.do" id="joinform" method="post">
<div class="page-ads box">
<div class="form-group">
<label class="control-label">아이디</label>
<input type="text" class="form-control" name="com_id" id="com_id" />
</div>

<div class="form-group">
<input type="button" style="background: #FF6347;" class="btn btn-common" id=idcheck value="중복 확인" /><br>
</div>

<div class="form-group">
<label class="control-label">패스워드</label>
<input type="password" class="form-control" name="com_pw" id="com_pw" />
</div>

<div class="form-group">
<label class="control-label">비밀번호 확인</label>
<input type="password" class="form-control" name="com_pwcheck" id="com_pwcheck" />
</div>

<div class="form-group">
<label class="control-label">이름</label>
<input type="text" class="form-control" name="com_name" id="com_name" />
</div>
    
<div class="form-group">
<label class="control-label">전 화 번 호</label>
<select id="hp1" name="com_phone" style="width:70;">
					   <option value="010"  selected> 010 </option>
					   <option value="011"> 011 </option>
					   <option value="016"> 016 </option>
					   <option value="017"> 017 </option>
					   <option value="018"> 018 </option>
					   <option value="019"> 019 </option>
					</select>
					-
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					-
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					<input type="hidden" id="com_phone" name="com_phone" >
</div>

<div class="form-group">
<label class="control-label">이메일</label>
<input type="text" name="com_email" id="com_email"> 
					@
					<select id="em1" name="em1" style="width:100;">
						<option value="daum.net" selected> daum.net </option>
						<option value="naver.com" selected> naver.com </option>
						<option value="gmail.com" selected> gmail.com </option>
					</select>
</div>

<div class="form-group">
<button class="btn btn-common" id=join>회원가입</button>
<button class="btn btn-common" style="background: #FF6347;" id=cancle() >취소</button>
</div>
</div>
</form>
</div>
</div>
</div>
</section>
<!-- 
	<section id="content">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-9 col-md-offset-2">
<fieldset>
<label>아직 회원이 아니신가요?</label>
<div class="field account-sign-in">
<p>
<a class="btn btn-common btn-sm" href="/user/join.do"><i class="ti-key"></i> Sign in</a>
</p>
</div>
<label>모임을 개설하시겠습니까?</label>
</fieldset>
<form class="form-ad" action="/company/join.do" id="joinform" method="post">
<div class="page-ads box">
<div class="form-group">
<label class="control-label">아이디 </label>
<input type="text" name="com_id" id="com_id"> &nbsp; <input type="button" class="btn btn-primary" id=idcheck value="중복확인">
</div>

<div class="form-group">
<label class="control-label">패스워드</label>
<input type="password" name="com_pw" id="com_pw">
</div>

<div class="form-group">
<label class="control-label">패스워드 확인</label>
<input type="password" name="com_pwcheck" id="com_pwcheck">
</div>
 
<div class="form-group">
<label class="control-label">이름</label>
<input type="text" name="com_name" id="com_name">
</div>
    
<div class="form-group">
<label class="control-label">전화번호</label>
<select id="hp1" name="com_phone" style="width:70;">
					   <option value="010"  selected> 010 </option>
					   <option value="011"> 011 </option>
					   <option value="016"> 016 </option>
					   <option value="017"> 017 </option>
					   <option value="018"> 018 </option>
					   <option value="019"> 019 </option>
					</select>
					-
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					-
					<input type="text" id="com_phone" name="com_phone" size="4" maxlength="4">
					<input type="hidden" id="com_phone" name="com_phone" >
</div>
    
<div class="form-group">
<label class="control-label">이메일</label><input type="text" name="com_email" id="com_email"> 
					@
					<select id="em1" name="em1" style="width:100;">
						<option value="daum.net" selected> daum.net </option>
						<option value="naver.com" selected> naver.com </option>
						<option value="gmail.com" selected> gmail.com </option>
					</select>
</div>

<div class="form-group">
<button class="btn btn-primary" id=cancle() >취소</button>
			<button class="btn btn-primary" id=join>회원가입</button>
</div>
</div>
</form>
</div>
</div>
</div>
</section> -->
</body>
</html>