<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<!--  main : 홈페이지 접속 시 보이는 화면 -->

<!-- head -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<%@ include file="/commonIncludeTop.jsp"%>

<title>런닝맨 홈페이지</title>
</head>

<!-- body -->
<body>

	<!-- 내비게이션 -->
	<jsp:include page="nav.jsp" />

	<!-- 런닝맨 소개 -->
	<div class="container">
	<div class="table-responsive">
		<table class="table">
			<tr>
				<td><img alt="" src="imgs/runInfor1.jpg"></td>
				<td colspan="2">
					<!-- 런닝맨 정보 -->
					<table class="in_table">
						<tr>
							<th class="table_line">방송<br>기간</th>
							<td class="table_line">2010.07.11~</td>
						</tr>
						<tr>
							<th class="table_line">편성</th>
							<td class="table_line">매주 일요일 오후 5:00~</td>
						</tr>
						<tr>
							<th class="table_line">제작사</th>
							<td class="table_line">SBS</td>
						</tr>
						<tr>
							<th class="table_line">PD</th>
							<td class="table_line">최보필 권형구 최형인 김남중 유선명 고지연 최지연</td>
						</tr>
						<tr>
							<th class="table_line">작가</th>
							<td class="table_line">양효임 강서림 김유리 지가은 한아름 이연경 이연주 김민희 여시연</td>
						</tr>
						<tr>
							<th class="table_line">출연</th>
							<td class="table_line">유재석 지석진 김종국 하하 송지효 전소민 양세찬</td>
						</tr>
						</tr>
						<tr>
							<th class="table_line">기획<br>의도</th>
							<td class="table_line">
								<br>누구도 상상하지 못했던 예측불허 빅웃음!! <br>대한민국을 대표하는 랜드마크, 얼마나 알고 계십니까? <br>런닝맨이 몸으로 직접 알려드리는 대한민국 대표 랜드마크! 
								<br>대한민국 최고의 연예인들이 그 곳에 모였다! <br>곳곳에 미션을 해결하고, 게임을 통해서
									다음날 아침이 오기전까지 그 곳을 빠져나와야한다!! <br>끊임없는 질주와 긴박감 넘치는 대결을 통해 대한민국 랜드마크들의 숨겨진 뒷모습을 전격 공개한다!
							</td>
						</tr>


					</table>

				</td>
			</tr>
		</table>
	</div>
</div>





	<!-- 런닝맨 소개 끝 -->

	<br>

	<jsp:include page="footer.jsp" />
	<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>