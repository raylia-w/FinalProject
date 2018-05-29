<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
<meta name="theme-color" content="#ff3b30">
<link rel="manifest" href="/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="/ms-icon-144x144.png">

<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="BUpP1y3g3qcdqbk40gae1NuVEM37jkuFksNewuY8OnsWxnnZgr8nwwVqaTYOnet29palr+kx0g/IOZ2b79mZug==">
<meta name="action-cable-url" content="/cable">

<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/main-59fe90f3f9be1ce624ecdbc78f81339ba90528a2d6b5ad2f18a9c0638ffc34a1.css">
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/web-da2841c18158e75bf236109ae20fd2d57300975a87478d63ddca64ff63492bb9.css">
<link rel="stylesheet" media="all" href="https://dppgjjx7k7m5m.cloudfront.net/assets/desktop-d760397406f1545e4592b2ea79bac5508fda97a4bd63562b92061d02bd0f6711.css">
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<!-- <link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet" type="text/css"> -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="https://dppgjjx7k7m5m.cloudfront.net/assets/main-76d3720d8b56eadcc8cf64fb74197c46099fde4352a18a5f25edc0c806c1a237.js" crossorigin="anonymous"></script>
<script src="https://dppgjjx7k7m5m.cloudfront.net/assets/web-9b4e26f38626985de32bb998ccfaca8e754a6117f6ec13079cd174715392de22.js" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=VFVi3YlO7oS6xNkx1n1R"></script>

<script>!function(e,o,n){window.HSCW=o,window.HS=n,n.beacon=n.beacon||{};var t=n.beacon;t.userConfig={},t.readyQueue=[],t.config=function(e){this.userConfig=e},t.ready=function(e){this.readyQueue.push(e)},o.config={docs:{enabled:!0,baseUrl:"//zipbob.helpscoutdocs.com/"},contact:{enabled:!0,formId:"d9595e48-dbf6-11e6-8789-0a5fecc78a4d"}};var r=e.getElementsByTagName("script")[0],c=e.createElement("script");c.type="text/javascript",c.async=!0,c.src="https://djtflbt20bdde.cloudfront.net/",r.parentNode.insertBefore(c,r)}(document,window.HSCW||{},window.HS||{});</script>

</head>
<body class="theme-red ">

<div class="panel-overlay"></div>
<div class="page product_55e77efee76f6870ab005461 products show" data-page="products-show">
	<div class="page-content">
		<div class="photo-swiper">
			<div class="photo">
				<div id="open-photo-browser" class="cover-image open-photo-browser" style="background-image: url(https://dppgjjx7k7m5m.cloudfront.net/uploads/product/photo/image/90/27/59a5667b532c283a92f27251/p1.jpg)"></div>
			</div>
		</div>
		<div class="page-content-inner">
			<div class="row">
				<div class="tablet-60">
					<div class="content-block main-content-block">
						<div class="content-block-inner">
							<div class="description-block">
								<div class="title">
								${group.intro }
      							</div>
      						<div class="description">
								${group.intro }
							</div>
						</div>
					</div>
				</div>
				<div class="content-block main-content-block">
					<div class="content-block-inner">
						<div class="engage-info-block">
							<div class="row">
								<div class="col-25">
									<i class="material-icons filter_list"></i><br><!-- 모임 카테고리 아이콘 이미지 http://bootstrapk.com/components/ 참조해서 카테고리 별로 적당하게 삽입할 것-->
          							<span>${group.theme }</span>
        						</div>
        						<div class="col-25">
        							<i class="material-icons face"></i><br><!-- 변경 필요 없음 -->
        							<span>참가자 19 / 정원 ${group.personnel }</span>
        						</div>
        						
	        					<div class="col-25">
	        						<i class="material-icons border_color"></i><br>
	          						<span>게시글 ${count }</span>개
	        					</div>
        					</div>       					
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="host-block-wrapper">
        		<div class="content-block host-block">
        			<div class="content-block-inner"></div>
        		</div>
        	</div>
        	<div class="interview-block-wrapper">
        		<div class="content-block-title interview-block-title">수다</div>
        		<a href="/interviews/58356c59532c283947a40874">
					<div class="content-block inset interview-block" style="background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://dppgjjx7k7m5m.cloudfront.net/uploads/interview/desktop_cover_image/5a/be/58356c59532c283947a40874/medium_Cover-1200x800.jpg)">	
      					<div class="title">“외로울 줄 아는 것도 능력이다.”</div><!-- 채팅방 타이틀 필요없을듯 -->
						<div class="summary">상대방과 진심을 나누는 다락방 집밥지기</div><!-- 채팅방 소개도 필요없을듯 -->
						<div class="button button-flat color-white">${group.chat_id }</div>
					</a>
				</div>
			</div>
			<!-- 공지글로 변경할 것 -->
			<div class="plain-invitation-block-wrapper">
				<div class="content-block-title invitation-block-title">공지</div>
				<div class="content-block plain-invitation-block">
					<div class="content-block-inner plain-invitation-detail">
						<div class="readmore-plain-invitation-detail" data-readmore="" aria-expanded="false" id="rmjs-1" style="max-height: none; height: 400px;">
							<p></p><div>&nbsp;
							<br>안녕하세요. 비온 뒤 숲속지기 심리상담사&nbsp;정경진입니다.<p></p>
							<p>'심리상담은 정신력이 약하거나 문제가 많은 사람이나 받지'라는 생각은 그야말로 편견입니다. 심리상담은 자신의 인생을 당당하게, 주인으로 살기위해 이제는 더 이상 미룰 수 없는 '나를 찾기 위한&nbsp;여행'입니다. </p>
							<p>다음의 내용을 고민하는 분이라면 오셔서 건강한 고민을 나누고&nbsp;홀가분해지세요. 
							<br> 
							<br>-부모와의 애증관계, 미워할 수도 사랑할 수도 없어&nbsp;괴로워요.
							<br>-연인과의 번번한 실패, 이제는 건강한 사랑을 하고&nbsp;싶어요.
							<br>-일과 사랑과 일상과 인생! 조화롭게 살 수&nbsp;있을까요?
							<br>-어디가나 소외감이 느껴져요. 지긋지긋한 외로움&nbsp;어찌해야할까요?
							<br>-직장생활, 아흐! 괴로워요. 어떻게&nbsp;다녀야할까요?
							<br>-매사에 자신이 없고 불안해요. 자존감이 높아질 수&nbsp;있을까요?
							<br>-아무것도 하고 싶은 게 없어요. 이제 그만 무기력에서 벗어나고&nbsp;싶어요. 
							<br>-그냥 우울해요. 화도 나고. 나도 행복해질 수&nbsp;있을까요?</p>
							<p>만능 처방전, 마음의 호랑이 연고는 어디에도 없습니다. 하지만, 혼자 끙끙 매고 있는 것보다 함께 나누다 보면 어느 새&nbsp;홀가분해집니다. 
							<br>뻔한 처세술이나 냉소적인 조언이 아닌, 심리전문가의 따뜻하고 전문적인 상담을 경험하시면, '아~ 이제라도 와서 다행이다.'하실&nbsp;것입니다. </p>
							<p>('홍대다락방에서 하는 심리상담'이 약수역 다산성곽마을 '비 온 뒤 숲속'으로 바뀌었습니다, 문의사항은 문자주세요.&nbsp;010-7771-3770)</p>
							<p>-연구소와 제&nbsp;소개는 </p>
							<p>-https://forest24.modoo.at&nbsp;-http://blog.naver.com/kyung3770&nbsp;</p>
							<p>로 들어오시면 볼 수&nbsp;있습니다.
							<br>&nbsp;</p>
							<p>*심리상담이 돈 있는 사람들의 전유물이 아닌 대중들에게 공유되고 오픈되는 사회공공재가 되었으면 하는&nbsp;바램입니다.
							<br></p></div><p></p>
						</div><a href="#" data-readmore-toggle="rmjs-1" aria-controls="rmjs-1">공지 게시판 이동</a>
					</div>
				</div>
			</div>
			<div class="review-block-wrapper">
				<div class="content-block-title review-block-title">게시글</div>
					<div class="content-block review-block">
						<div class="content-block-inner">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
								</thead>
								<tbody>
									<c:forEach items="${board}" var="board">
									<tr>
										<td>${board.title }</td>
										<td>${board.user_nick }</td>
										<td>${board.written_date }</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<a href="/group/board.do?group_no=${group.group_no }"><div class="content-block text-block">게시판 이동</div></a>
			</div>
		</div>
		<div class="review-block-wrapper">
			<div class="content-block-title review-block-title">사진</div>
			<div class="content-block review-block">
				<div class="content-block-inner">
					<a class="read-more-review" href="/group/photo.do?group_no=${group.group_no }">
						<div class="card review-card review_591f9674532c28793338d0b3">
							<div class="card-content">
								<div class="card-content-inner"></div>
								<div class="row no-gutter photos">
									<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/34/11/591f9698532c28793338d0b4/small_20170519_193602_HDR.jpg" alt="Small 20170519 193602 hdr"></div>
          							<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/c1/ac/591f96a0532c28328c383a27/small_20170519_194822.jpg" alt="Small 20170519 194822"></div>
          							<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/6d/f0/591f96b2532c28328c383a28/small_20170519_194826.jpg" alt="Small 20170519 194826"></div>
          							<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/5b/c9/591f96b4532c28793338d0b7/small_20170519_195955.jpg" alt="Small 20170519 195955"></div>
          							<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/46/7a/591f96d9532c28793338d0b8/small_20170519_195832.jpg" alt="Small 20170519 195832"></div><div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/95/5d/591f96d9532c28328c383a29/small_20170519_195905.jpg" alt="Small 20170519 195905"></div>
          							<div class="photo col-25"><img src="https://dppgjjx7k7m5m.cloudfront.net/uploads/review/photo/image/0a/9c/591f96ea532c28793338d0c5/small_20170519_230129.jpg" alt="Small 20170519 230129"></div>
          							<div class="photo col-25 dummy"></div>
          							<div class="photo col-25 dummy"></div>
          						</div>
          					</div>
          					<div class="content-block text-block">사진 더 보기</div>
          				</a>	      
          			</div>
          		</div>
          	</div>
          	
			<!-- 여기부터 정모 -->
			<div class="extra-block-wrapper">
				<div class="content-block extra-block">
					<div class="list-block media-list">
						<ul>
							<li>
								<div class="item-content">
									<div class="item-inner">
										<div class="item-title-row">
											<div class="item-title">정모 참가비</div>
											<div class="item-after">차아아암가아아아비ㅣ잉이</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item-content">
									<div class="item-inner">
										<div class="item-title-row">
											<div class="item-title">최대 참여 인원수</div>
											<div class="item-after">7명</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="item-content">
									<div class="item-inner">
										<div class="item-title-row">
											<div class="item-title">최소 참여 인원수</div>
											<div class="item-after">2명</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="menu-block-wrapper">
				<div class="content-block-title">포함내용</div>
					<div class="content-block menu-block">
						<div class="content-block-inner">
							<p>정모 참여 비용에는 간단한 먹거리와 사이트 수수료가 포함되어 있습니다.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- 정모 목록 -->
			<div class="tablet-40">
				<div class="variant-block-wrapper">
					<div class="content-block-title variant-block-title">날짜</div>
					<div class="content-block">
						<div class="list-block media-list variant-block">
							<ul>
								<li class="variant-item">
									<div class="item-link item-content">
										<div class="item-inner">
											<div class="item-text">현재 참여 가능한 일정이 없습니다.</div>
										</div>
									</div>
								</li>
							</ul>
							<!-- 모임별 정모 관련 안내, 모임마다 내용 다르지만 첫번째 내용은 동일할 것 -->
						<div class="list-block-label">
							하나. 신청은 당일 2시간 전까지 가능합니다.<br>
							둘. 집밥지기의 연락처는 모임 하루 전 오후 7시에 문자와 이메일, 앱에서 공유됩니다.<br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="location-block-wrapper">
		<div class="content-block-title">장소</div>
			<div class="content-block location-block">
				<div class="content-block-inner">
					<div class="address">서울 중구 신당동</div>
				</div>
				<div id="product-map" class="map" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div style="position: absolute; top: -366px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 462px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1692/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 206px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1691/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 718px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1693/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: -50px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1690/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 146px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1480/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 402px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1479/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -110px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1481/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 658px; left: 974px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1694/1478/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -366px; left: -306px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="https://simg.pstatic.net/onetile/get/193/0/0/11/1689/1482/bl_vc_bg/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"><svg:svg version="1.1" width="152px" height="152px" viewBox="418 249 152 152" overflow="visible" xmlns:xlink="http://www.w3.org/1999/xlink" style="position: absolute; overflow: visible; margin: 0px; padding: 0px; border: 0px; width: 152px; height: 152px; pointer-events: none; z-index: 0; left: 418px; top: 249px;"><path fill-rule="evenodd" d="M 419 325 A 75 75 0 1 0 419 324 Z" style="stroke:#007EEA;stroke-width:1px;stroke-opacity:1;fill:#2196f3;fill-opacity:0.3;pointer-events:visiblePainted;"></path></svg:svg></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: -4px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 52px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">100m</span><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png" width="44" height="4" alt="" style="position:absolute;left:4px;;bottom:0;z-index:2;display:block;width:44px;height:4px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right;"><a href="http://map.naver.com" target="_blank" style="display: block; width: 43px; height: 10px; overflow: hidden; margin: 0px 5px 7px 0px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal.png" width="43" height="10" alt="NAVER" style="display:block;width:43px;height:10px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 19px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">╳</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;"> /OpenStreetMap</a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; top: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right;"><div style="position: relative; z-index: 4; pointer-events: auto;"><div style="position: relative; z-index: 0; width: 28px; margin: 10px; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important; user-select: none;"><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-bottom: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-in-large-normal.png" width="28" height="22" alt="지도 확대" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: relative; width: 28px; height: 96px; overflow: hidden; margin: 0px; padding: 7px 0px; background-color: rgb(255, 255, 255); cursor: pointer; box-sizing: content-box !important; display: block;"><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 96px; display: block; background-color: rgb(47, 135, 236);"></div><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 34px; display: block; background-color: rgb(202, 205, 209);"></div><a href="#" style="position: absolute; left: 4px; width: 18px; height: 10px; top: 34px; border: 1px solid rgb(68, 68, 68); cursor: move; display: block; overflow: hidden; box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-handle.png" width="18" height="10" alt="지도 확대/축소 슬라이더" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:18px;height:10px;"></a></div><a href="#" style="position: relative; z-index: 2; width: 28px; height: 22px; cursor: pointer; display: block; overflow: hidden; border-top: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-out-large-normal.png" width="28" height="22" alt="지도 축소" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:28px;height:22px;"></a><div style="position: absolute; top: 22px; width: 44px; height: 0px; overflow: visible; display: none; left: -51px;"><div style="display: block; margin: 0px; padding: 0px;"><h4 style="visibility:hidden;width:0;height:0;overflow:hidden;margin:0;padding:0;">지도 컨트롤러 범례</h4><div style="position: absolute; top: 13px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-on.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">부동산</span></div><div style="position: absolute; top: 33px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">거리</span></div><div style="position: absolute; top: 53px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">읍,면,동</span></div><div style="position: absolute; top: 83px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,군,구</span></div><div style="position: absolute; top: 113px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,도</span></div><div style="position: absolute; top: 133px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-left-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 4px 0px 0px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">국가</span></div></div></div></div></div></div></div></div>
				<div class="list-block media-list">
					<ul>
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title-row">
										<div class="item-title">지역</div>
										<div class="item-after">서울, 중구<br></div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="item-content">
								<div class="item-inner">
									<div class="item-title-row">
										<div class="item-title">장소명</div>
										<div class="item-after">심리상담연구소 "비온 뒤 숲속"</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>

<script>
	// map
	var coordinate = JSON.parse('{"lat":37.555605,"lng":127.0072893}');
    var oPoint = new naver.maps.LatLng(coordinate.lat, coordinate.lng);

    var map = new naver.maps.Map($('.product_55e77efee76f6870ab005461 #product-map')[0], {
      center: oPoint,
      scrollWheel: false,
      draggable: true,
      zoom: 11,
      minZoom: 5,
      maxZoom: 14,
      zoomControl: true,
      zoomControlOptions: {
        position: naver.maps.Position.TOP_RIGHT
        }
    });
    var circle = new naver.maps.Circle({
      map: map,
      center: oPoint,
      radius: 150,
      fillColor: '#2196f3',
      fillOpacity: 0.3,
    });
</script>


</html>
