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
			alert("��� ���Ǹ� üũ���ּ���");
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
				<label for="dNum">��¥</label>
				<input id="dNum" name="dNum" class="right" type="date" />
			</div><br>			
			<div id="rLoc">
				<label for="locSelect">���</label>
				<div class="form-group">
					<input type="text" class="form-control" id="sample4_postcode" placeholder="�����ȣ">
				</div>
				<input type="button" class="btn" onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="sample4_roadAddress" placeholder="���θ��ּ�"><br> 
					<input type="text" class="form-control" id="u_address" name="u_address" for="u_address" placeholder="�����ּ�">
					<span id="guide" style="color: #999"></span><br>
				</div>
			</div>
<!-- 			<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> -->
<!-- 			<script> -->
//                //�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
//                function sample4_execDaumPostcode() {
//             	   new daum.Postcode({
//             		   oncomplete : function(data) {
// 					      // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
					
// 					      // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
// 					      // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
// 					      var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
// 					      var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
					
// 					      // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
// 					      // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
// 					      if (data.bname !== ''
// 					            && /[��|��|��]$/g.test(data.bname)) {
// 					         extraRoadAddr += data.bname;
// 					      }
// 					      // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
// 					      if (data.buildingName !== ''
// 					            && data.apartment === 'Y') {
// 					         extraRoadAddr += (extraRoadAddr !== '' ? ', '
// 					               + data.buildingName
// 					               : data.buildingName);
// 					      }
// 					      // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
// 					      if (extraRoadAddr !== '') {
// 					         extraRoadAddr = ' ('
// 					               + extraRoadAddr + ')';
// 					      }
// 					      // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
// 					      if (fullRoadAddr !== '') {
// 					         fullRoadAddr += extraRoadAddr;
// 					      }
					
// 					      // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
// 					      document
// 					            .getElementById('sample4_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
// 					      document
// 					            .getElementById('sample4_roadAddress').value = fullRoadAddr;
// 					      document
// 					            .getElementById('u_address').value = data.jibunAddress;
					
// 					      // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
// 					      if (data.autoRoadAddress) {
// 					         //����Ǵ� ���θ� �ּҿ� ������ �ּҸ� �߰��Ѵ�.
// 					         var expRoadAddr = data.autoRoadAddress
// 					               + extraRoadAddr;
// 					         document.getElementById('guide').innerHTML = '(���� ���θ� �ּ� : '
// 					               + expRoadAddr + ')';
					
// 					      } else if (data.autoJibunAddress) {
// 					         var expJibunAddr = data.autoJibunAddress;
// 					         document.getElementById('guide').innerHTML = '(���� ���� �ּ� : '
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
				<label for="timeSelect">�ð�</label>
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
			
			<div id="rNum"><label for="rPerson">�ο�</label><input type="text" id="rPerson" name="rPerson" class="right"/><br>
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>
			
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br></div>

			<div id="rTerms"><label>��� ����</label><br>
				<div><label><a href="/reservation/terms.do?terms=terms1" target="_blank">���1</a></label><input type="checkbox" id="terms1" name="terms1" class="right" /></div><br><div class="clear"></div>
				<div><label><a href="/reservation/terms.do?terms=terms2" target="_blank">���2</a></label><input type="checkbox" id="terms2" name="terms2" class="right" /></div>
			</div><br>
			
			<div style="background-image: url(/img/line-horizontal.svg); width:620px; height:10px;" class="clear"></div><br>
			<div><input type="button" id="btnOk" class="btn btn-primary" value="Ȯ��" />&nbsp;&nbsp;&nbsp;<input type="button" id="btnCancel" class="btn btn-default" onClick="location.href='/restaurantsinfo.do?restaurant=${shop.s_id_no}';" value="���" /></div><br>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>

</body>
</html>