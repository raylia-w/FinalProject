<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="calendar.js"></script>    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
.jquery-calender {
	width: 620px;
	height:320px;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$("#btnOk").click(function(){
		if($("#terms1").is(":checked") && $("#terms2").is(":checked")){
			var person = $("#rPerson").val(); 
			var price = $("#s_price").val();
			var disrate = ($("#discount").val() * 0.1).toFixed(1);
			var discount = person * price * disrate;
			var amount = person * price - discount;
			$("#selectInfo").val(amount);
			$("#reservation").submit();
		} else {
			alert("약관 동의를 체크해주세요");
		}
	});
	
});
</script>

</head>
<body>
<div id="wrapper">
	<div id="contents">
		<div id="r_contents" >
		
			<form action="/reservation/reservation.do" method="post" id="reservation">
			
			<div>
				<label for="dNum">날짜</label>
				<input id="dNum" name="dNum" class="right" type="date" />
			</div><br>			
			<div id="rLoc">
				<label for="locSelect">장소</label>
				<div class="form-group">
					<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
				</div>
				<input type="button" class="btn" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="sample4_roadAddress" placeholder="도로명주소"><br> 
					<input type="text" class="form-control" id="u_address" name="u_address" for="u_address" placeholder="지번주소">
					<span id="guide" style="color: #999"></span><br>
				</div>
			</div>
<!-- 			<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> -->
<!-- 			<script> -->
//                //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
//                function sample4_execDaumPostcode() {
//             	   new daum.Postcode({
//             		   oncomplete : function(data) {
// 					      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
					
// 					      // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
// 					      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
// 					      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
// 					      var extraRoadAddr = ''; // 도로명 조합형 주소 변수
					
// 					      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
// 					      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
// 					      if (data.bname !== ''
// 					            && /[동|로|가]$/g.test(data.bname)) {
// 					         extraRoadAddr += data.bname;
// 					      }
// 					      // 건물명이 있고, 공동주택일 경우 추가한다.
// 					      if (data.buildingName !== ''
// 					            && data.apartment === 'Y') {
// 					         extraRoadAddr += (extraRoadAddr !== '' ? ', '
// 					               + data.buildingName
// 					               : data.buildingName);
// 					      }
// 					      // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
// 					      if (extraRoadAddr !== '') {
// 					         extraRoadAddr = ' ('
// 					               + extraRoadAddr + ')';
// 					      }
// 					      // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
// 					      if (fullRoadAddr !== '') {
// 					         fullRoadAddr += extraRoadAddr;
// 					      }
					
// 					      // 우편번호와 주소 정보를 해당 필드에 넣는다.
// 					      document
// 					            .getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
// 					      document
// 					            .getElementById('sample4_roadAddress').value = fullRoadAddr;
// 					      document
// 					            .getElementById('u_address').value = data.jibunAddress;
					
// 					      // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
// 					      if (data.autoRoadAddress) {
// 					         //예상되는 도로명 주소에 조합형 주소를 추가한다.
// 					         var expRoadAddr = data.autoRoadAddress
// 					               + extraRoadAddr;
// 					         document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
// 					               + expRoadAddr + ')';
					
// 					      } else if (data.autoJibunAddress) {
// 					         var expJibunAddr = data.autoJibunAddress;
// 					         document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
// 					               + expJibunAddr + ')';
					
// 					      } else {
// 					         document.getElementById('guide').innerHTML = '';
// 					      }
// 					   }
// 					}).open();
//                }
<!--             </script> -->
			</div>
			
			<div id="rTime">
				<label for="timeSelect">시간</label>
				<select id="timeSelect" name="timeSelect" size="1" class="right" style="width:170px;">
					<option value="9:00">9:00</option><option value="9:30">9:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option>
					<option value="11:30">11:30</option><option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option>
					<option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="15:30">15:30</option><option value="16:00">16:00</option>
					<option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option>
					<option value="19:00">19:00</option><option value="19:30">19:30</option><option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option>
				</select>
			<br>
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div>
			</div>
			
			<div id="rNum"><label for="rPerson">인원</label><input type="text" id="rPerson" name="rPerson" class="right"/><br>
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>
			
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>

			<div id="rTerms"><label>약관 동의</label><br>
				<div><label><a href="/reservation/terms.do?terms=terms1" target="_blank">약관1</a></label><input type="checkbox" id="terms1" name="terms1" class="right" /></div><br><div class="clear"></div>
				<div><label><a href="/reservation/terms.do?terms=terms2" target="_blank">약관2</a></label><input type="checkbox" id="terms2" name="terms2" class="right" /></div>
			</div><br>
			
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br>
			<div><input type="button" id="btnOk" class="btn btn-primary" value="확인" />&nbsp;&nbsp;&nbsp;<input type="button" id="btnCancel" class="btn btn-default" onClick="location.href='/restaurantsinfo.do?restaurant=${shop.s_id_no}';" value="취소" /></div><br>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>

</body>
</html>