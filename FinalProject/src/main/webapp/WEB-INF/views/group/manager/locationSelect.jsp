<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	</head>

<body>

<div id="category">
	<select name="category1">
		<option></option>
		<option></option>
		<option></option>
	</select>
	<select name="category2">
	</select>
</div>
<div id="addr">
	<label for="addr">���� ����</label>
	<select name="">
	</select>
	<select name="">
	</select>
	<select name="">
	</select>
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false"> 
	
	<!--������-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!--������-->

	<div class="carousel-inner">
		<!--�����̵�1-->
		<div class="item active"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 1</h1>
					<p>�ؽ�Ʈ 1</p>
				</div>
			</div>
		</div>
		<!--�����̵�1-->

		<!--�����̵�2-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" style="width:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 2</h1>
					<p>�ؽ�Ʈ 2</p>
				</div>
			</div>
		</div>
		<!--�����̵�2-->
		
		<!--�����̵�3-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" style="width:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 3</h1>
					<p>�ؽ�Ʈ 3</p>
				</div>
			</div>
		</div>
		<!--�����̵�3-->
	</div>
	
	<!--����, ���� ��ư-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>