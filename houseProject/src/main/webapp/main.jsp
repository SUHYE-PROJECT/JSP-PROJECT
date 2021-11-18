<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--  main : 홈페이지 접속 시 보이는 화면 -->

<!-- head -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<%@ include file="/commonIncludeTop.jsp"%>

<title>바퀴달린집 홈페이지</title>
</head>

<!-- body -->
<body>

	<!-- 내비게이션 -->
	<jsp:include page="nav.jsp" />

	<!-- 캐러솔 시작 : https://getbootstrap.com/docs/4.0/components/carousel/ -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5200">
		<!-- Slide Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="imgs/1.jpg" alt="...">
				<div class="carousel-caption"></div>
			</div>

			<div class="item">
				<img src="imgs/2.jpg" alt="...">

				<div class="carousel-caption"></div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
			<!--end carousel-->

		</div>
		<!-- 캐러솔 끝 -->


		<br>
		<!-- 유튜브 영상, 출연자 소개 연결 시작 -->
		<!-- 동영상 축소 시 안 보임 -->
		<div style="text-align: center;">
			<div class="row">
				<div class="col-xs-6">
					<!-- 유튜브 동영상 : https://www.youtube.com/watch?v=bpxccawKtZs&t=1s -->
					<iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/bpxccawKtZs" title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>

				<!--  출연자 소개 -->
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="imgs/3.jpg" alt="...">
						<div class="caption">
							<h3>Thumbnail label</h3>
							<p>...</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 유튜브 영상, 출연자 소개 연결 끝 -->

		<br>

		<jsp:include page="footer.jsp" />
		<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>