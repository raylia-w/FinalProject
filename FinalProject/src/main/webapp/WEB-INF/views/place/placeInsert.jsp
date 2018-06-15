<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btnplaceinsert").click( function() {
		 if( $("#pla_name").val() == ""){
			 alert("장소명을 입력해주세요");
			 $("#pla_name").focus();
			 return false;
		 }else if( $("#pla_address").val() == ""){
			 alert("장소 주소를  입력해주세요 ");
			 $("#pla_address").focus();
			 return false;
		 }else if (  $("#pla_address").val() == "" ){
			 alert("연락처를 입력하세요");
			 $("#pla_phone").focus();
			 return false;
		 }else if($("#pla_time").val()==""){
				alert("기본이용시간을 입력하세요");
				$("#pla_time").focus();
				 return false;
			}else if($("#pla_money").val()==""){
				$("#pla_money").focus();
				alert("이용금액을 입력하세요");
				 return false;
			}else if($("#pla_statue").val()==""){
				alert("휴관일 입력하세요");
				$("#pla_statue").focus();
				 return false;
			}else if($("#pla_start").val()==""){
					alert("영업시작시간을 입력하세요");
					$("#pla_start").focus();
					 return false;
			}else if($("#pla_end").val()==""){
				alert("영업종료시간을 입력하세요");
				$("#pla_end").focus();
				 return false;
		}else if($("#pla_people").val()==""){
			alert("수용가능한 인원을 입력하세요");
			$("#pla_people").focus();
			 return false;
	}
	});
	
});
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('pla_address').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
//                 if(data.autoRoadAddress) {
//                     //예상되는 도로명 주소에 조합형 주소를 추가한다.
//                     var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
//                     document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

//                 } else if(data.autoJibunAddress) {
//                     var expJibunAddr = data.autoJibunAddress;
//                     document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

//                 } else {
//                     document.getElementById('guide').innerHTML = '';
//                 }
            }
        }).open();
    }


</script>
</head>
<body>
<section id="content">
<form action="/place/placeInsert.do" id="placeInsert" method="post" class="form-ad" enctype="multipart/form-data">
<div class="container">
<div class="row">
<div class="col-md-8 col-md-offset-2">
<div class="page-ads box">
<div class="post-header">
<h5 style="text-align: center; color: #ff4f57;">제휴업체 대여장소를 등록하시겠습니까?</h5>
</div>
<div class="divider">
<h3 style="text-align: center;">제휴 업체 등록</h3>
</div>

	<div class="form-group">
		<label class="control-label" for="textarea">장 소 명</label>
		<input type="text" name="pla_name" id="pla_name" class="form-control">
	</div>
	
<td height="40" align="center"><strong>이미지 업로드 : </strong></td>
<td>
	<input type="file" id="file" name="file">
</td>
	
	<div class="form-group">
		<label class="control-label" for="textarea">장소 주소</label>
		<div class="form-group">
		<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호">
		</div>
		<div class="form-group">
		<input type="button" style="background: #FF6347;" class="btn btn-common" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
		</div>
		<div class="form-group">
		<input type="text" class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
		</div>
		<div class="form-group">
		<input type="text" class="form-control" id="pla_address" name="pla_address" for="pla_address" placeholder="지번주소">
		</div>
	</div>

<div class="form-group">
<label class="control-label" for="textarea">장소 연락처</label>
<select id="hp1" name="pla_phone" style="width:70;">
					   <option value="02"  selected> 02 </option>
					   <option value="032"> 032 </option>
					   <option value="031"> 031 </option>
					   <option value="033"> 033 </option>
					   <option value="043"> 043 </option>
					   <option value="064"> 064 </option>
					</select>
					-
					<input type="tel" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					-
					<input type="text" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					<input type="hidden" id="pla_phone" name="pla_phone" >
</div>

<div class="form-group">
<label class="control-label" for="textarea">기본 이용 시간</label>
<input type="text" name="pla_time" id="pla_time" class="form-control">
</div>
<div class="form-group">
<label class="control-label" for="textarea">이용 금액</label>
<input type="text" name="pla_money" id="pla_money" class="form-control">
</div>
<div class="form-group">
<label class="control-label" for="textarea">휴 관 일</label>
<input type="text" name="pla_statue" id="pla_statue" class="form-control" >
</div>
<div class="form-group">
<label class="control-label" for="textarea">영업시작시간</label>
<select id="pla_start" name="pla_start" style="width:40;">
					   <option value="04"  selected> 04 </option>
					   <option value="05"> 05 </option>
					   <option value="06"> 06 </option>
					   <option value="07"> 07 </option>
					   <option value="08"> 08 </option>
					   <option value="09"> 09 </option>
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					</select>
</div>
<div class="form-group">
<label class="control-label" for="textarea">영업종료시간</label>
<select id="pla_end" name="pla_end" style="width:40;">
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					   <option value="19"> 19 </option>
					   <option value="20"> 20 </option>
					   <option value="21"> 21 </option>
					   <option value="22"> 22 </option>
					   <option value="23"> 23 </option>
					   <option value="24"> 24 </option>
					</select>
</div>
<div class="form-group">
<label class="control-label" for="textarea">수용 가능 인원</label>
<input type="text" name="pla_people" id="pla_people" class="form-control" placeholder="수용 가능한 인원을 적어주세요.">
</div>

<div class="from-group">
<button class="btn btn-common" id="btnplaceinsert">장소 등록</button>
<button class="btn btn-common" style="background: #FF6347;" id=cancle() >취소</button>
</div>

</div>
</div>
</div>
</div>
</form>
</section>
<!-- 
<h1> </h1>
<hr>
	<div class="container">
		<form action="/place/placeInsert.do" id="placeInsert" method="post" >
			<table width="100" align="center"  cellpadding="1" class="table table-striped table-hover">
			<tr>
				<td height="40" align="center"><strong>장소 명 : </strong></td>
				<td><input type="text" name="pla_name" id="pla_name" class="form-control"> &nbsp; </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>장소 주소 : </strong></td>
				<td> <input type="text" name="pla_address" id="pla_address" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>장소 연락처 : </strong></td>
				<td>
					<select id="hp1" name="pla_phone" style="width:70;">
					   <option value="02"  selected> 02 </option>
					   <option value="032"> 032 </option>
					   <option value="031"> 031 </option>
					   <option value="033"> 033 </option>
					   <option value="043"> 043 </option>
					   <option value="064"> 064 </option>
					</select>
					-
					<input type="tel" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					-
					<input type="text" id="pla_phone" name="pla_phone" size="4" maxlength="4">
					<input type="hidden" id="pla_phone" name="pla_phone" >
				</td>

			</tr>
			<tr>
				<td height="40" align="center"><strong>기본 이용 시간 : </strong></td>
				<td> <input type="text" name="pla_time" id="pla_time" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>이용 금액 : </strong></td>
				<td><input type="text" name="pla_money" id="pla_money" class="form-control"> </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>휴관일 : </strong></td>
				<td><input type="text" name="pla_statue" id="pla_statue" class="form-control" > </td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>영업시작시간 : </strong></td>
				
				<td>  
					<select id="pla_start" name="pla_start" style="width:40;">
					   <option value="04"  selected> 04 </option>
					   <option value="05"> 05 </option>
					   <option value="06"> 06 </option>
					   <option value="07"> 07 </option>
					   <option value="08"> 08 </option>
					   <option value="09"> 09 </option>
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					</select>
				</td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>영업종료시간 : </strong></td>
			<td>  
					<select id="pla_end" name="pla_end" style="width:40;">
					   <option value="10"> 10 </option>
					   <option value="11"> 11 </option>
					   <option value="12"> 12 </option>
					   <option value="13"> 13 </option>
					   <option value="14"> 14 </option>
					   <option value="15"> 15 </option>
					   <option value="16"> 16 </option>
					   <option value="17"> 17 </option>
					   <option value="18"> 18 </option>
					   <option value="19"> 19 </option>
					   <option value="20"> 20 </option>
					   <option value="21"> 21 </option>
					   <option value="22"> 22 </option>
					   <option value="23"> 23 </option>
					   <option value="24"> 24 </option>
					</select>
				</td>
			</tr>
			<tr>
				<td height="40" align="center"><strong>수용 가능한 인원 : </strong></td>
				<td>
					<input type="text" name="pla_people" id="pla_people"> <strong>명  </strong>
				</td>
			</tr>
			<tr>
			<td class="btn pull-right"><button class="btn btn-primary" id=cancle() >취소</button>
			<button class="btn btn-primary" id="btnplaceinsert">장소 등록</button><br></td>
			</tr>
			</table>
		</form>
		</div> -->
</body>
</html>