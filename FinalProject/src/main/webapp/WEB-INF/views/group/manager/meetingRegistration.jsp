<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="calendar.js"></script>    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css" />
<script type="text/javascript" src="/resources/js/jquery-ui.js"></script>
<style>
.jquery-calender {
	width: 620px;
	height:320px;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$("#layerpop").dialog({
		autoOpen:false,
		width:500,
		buttons:[{
			text:"확인",
			click:function(){
				window.open("/pay.do", "결제", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=no");
				$("#reservation").submit();
				$(this).dialog("close");
			}
		}, {
			text:"취소",
			click:function(){
				$(this).dialog("close");
				$("#mask, .window").hide();
			}
		}]
	});
	$("mask").click(function(){
		$(this).hide();
		$(".window").hide;
	});
	
	$("#locSelect").click(function(){
		location.href="/group/meeting/location.do";
	});
	$("#btnOk").click(function(){
		if($("#terms1").is(":checked") && $("#terms2").is(":checked")){
			wrapWindowByMask();
			$('#layerpop').dialog('open');
			e.preventDefault();
			$("#reservation").submit();
		} else {
			alert("약관 동의를 체크해주세요");
		}
	});
	
});
function wrapWindowByMask(){
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();
	
	$("#mask").css({"width":maskWidth, "height":maskWidth});
	
	$("#mask").fadeTo("slow", 0.8);
}
</script>

</head>
<body>
<div id="r_contents" >
	<form action="/group/meeting/registration.do" method="post" id="reservation">
		<div>
			<label for="res_day">날짜</label>
			<input id="res_day" name="res_day" type="date" class="form-control" />
		</div><br>			
		<div id="rLoc">
			<label for="locSelect">장소</label><br>
			<input type="button" class="btn" id="locSelect" value="제휴업체 찾기">
			<input type="button" class="btn"  value="직접 입력하기"><br><br>
		</div>
		<div class="form-group">
			<div class="col-sm-6">
				<input type="text" onclick="sample4_execDaumPostcode()" class="form-control" id="addr" name="addr" placeholder="주소를 검색해주세요"><br> 
				<input type="text" class="form-control" id="addrDetail" name="addrDetail" placeholder="상세 주소를 입력해주세요"><br>
				<span id="guide" style="color: #999"></span><br>
			</div>
		</div>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	 	   new daum.Postcode({
	 		   oncomplete : function(data) {
					$("#addr").val(data.address);
					close();
	 		   	}
			}).open();
		}
		</script>
		<br><br><br><br><br>
		<div id="rTime">
		<label for="timeSelect">시간</label>
			<select id="timeSelect" name="date_start" size="1" class="form-control" style="width:170px;">
				<option value="900">9:00</option><option value="930">9:30</option><option value="1000">10:00</option><option value="1030">10:30</option><option value="1100">11:00</option>
				<option value="1130">11:30</option><option value="1200">12:00</option><option value="1230">12:30</option><option value="1300">13:00</option><option value="1330">13:30</option>
				<option value="1400">14:00</option><option value="1430">14:30</option><option value="1500">15:00</option><option value="1530">15:30</option><option value="1600">16:00</option>
				<option value="1630">16:30</option><option value="1700">17:00</option><option value="1730">17:30</option><option value="1800">18:00</option><option value="1830">18:30</option>
				<option value="1900">19:00</option><option value="1930">19:30</option><option value="2000">20:00</option><option value="2030">20:30</option><option value="2100">21:00</option>
			</select>
			<select id="timeSelect" name="date_end" size="1" class="form-control" style="width:170px;">
				<option value="900">9:00</option><option value="930">9:30</option><option value="1000">10:00</option><option value="1030">10:30</option><option value="1100">11:00</option>
				<option value="1130">11:30</option><option value="1200">12:00</option><option value="1230">12:30</option><option value="1300">13:00</option><option value="1330">13:30</option>
				<option value="1400">14:00</option><option value="1430">14:30</option><option value="1500">15:00</option><option value="1530">15:30</option><option value="1600">16:00</option>
				<option value="1630">16:30</option><option value="1700">17:00</option><option value="1730">17:30</option><option value="1800">18:00</option><option value="1830">18:30</option>
				<option value="1900">19:00</option><option value="1930">19:30</option><option value="2000">20:00</option><option value="2030">20:30</option><option value="2100">21:00</option>
			</select>
			<br><br>
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div>
		</div>
		<div id="rAmount"><label for="rAcount">참가비</label><input type="text" id="fee" name="fee" class="form-control" style="width:170px;"/><br></div>
		<div id="rPersonnel"><label for="rPerson">인원</label><input type="text" id="personnel" name="personnel" class="form-control" style="width:170px;"/><br>
		<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>
	
		<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>
	
		<div id="rTerms"><label>약관 동의</label><br>
			<div><label><a href="/reservation/terms.do?terms=terms1" target="_blank">약관1</a></label><input type="checkbox" id="terms1" name="terms1" class="right" /></div><br><div class="clear"></div>
			<div><label><a href="/reservation/terms.do?terms=terms2" target="_blank">약관2</a></label><input type="checkbox" id="terms2" name="terms2" class="right" /></div>
		</div><br>
	
		<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br>
		<div><input type="button" id="btnOk" class="btn btn-primary" value="정모 등록" />&nbsp;&nbsp;&nbsp;
		<input type="button" id="btnCancel" class="btn btn-default" onClick="location.href='/group/main.do?group_no=${group.group_no}';" value="취소" /></div><br>
		<input type="hidden" id="group_no" name="group_no" value="${group.group_no }">
	</form>
</div>
<div class="clear"></div>
<div id="mask"></div>
<div id="layerpop" title="정모 등록">
	정모를 등록하기 위해서 등록 예약금을 결제해야 합니다.
</div>

</body>
</html>