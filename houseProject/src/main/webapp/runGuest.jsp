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
		<table>
			<!-- 유재석 -->
			<tr>
				<td><img alt="" src="imgs/runGuest1.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>유재석</h4></td>
						</tr>
						<tr>
							<td>별명 : 변치 않는 예능 까불이<br> <br>런닝맨의 자존심. <br>본인은 아니라는데도 멤버들이 인정하는 런닝맨 외모 서열 1위. <br>웃음이면 웃음, 추리면 추리, 스피드면 스피드. <br>다른
								멤버들의 부러움을 사는 진짜 능력자이자 <br>런닝맨의 공식 장난꾸러기. 그리고 유르스윌리스.
							</td>
						</tr>

					</table>
				</td>
			</tr>

			<!-- 지석진 -->
			<tr>
				<td><img alt="" src="imgs/runGuest2.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>지석진</h4></td>
						</tr>
						<tr>
							<td>별명 : 억지로 가족을 사랑하는 척하는 잠원동 휴 그랜트<br> <br>지석진은 초창기에 빠지려 하였으나 지금은 런닝맨이 최고라고 하고 다녀<br> 주변에서 빈축을 사고 있음
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<!-- 김종국 -->
			<tr>
				<td><img alt="" src="imgs/runGuest3.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>김종국</h4></td>
						</tr>
						<tr>
							<td>별명 : 여름엔 김찌찌. 그 외 계절엔 김관장<br> <br>내 마음은 간장 종지!<br> 깡패에서 대상까지!<br> 회식도 미우새를 더 챙기는 미운 새끼!<br> 2020년 연예대상 수상을
								축하합니다.
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<!-- 하하 -->
			<tr>
				<td><img alt="" src="imgs/runGuest4.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>하하</h4></td>
						</tr>
						<tr>
							<td>별명 : 79년생 연예인 중에 가장 젊은 척하는 더러운 콧수염 <br> <br>세 아이의 아빠이자 자타공인 런닝맨 공식 꼰대.<br> 아직도 본인만 모름, 아니 인정 안 하고 싶어 함.<br> 작디작은 콴
								엔터테인먼트 먹여 살리려고<br> 푼돈만 쥐여주면 열심히 뛰고 있는 CEO.<br> 최근 나에게 과메기를 보내줬음.
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<!-- 송지효 -->
			<tr>
				<td><img alt="" src="imgs/runGuest5.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>송지효</h4></td>
						</tr>
						<tr>
							<td>별명 : 본명은 천성임, 천수연. 별명은 적토마 <br> <br>런닝맨 멤버들과의 케미가 엄청 있다고 할 수는 없지만<br>런 그렇다고 없다고 할 수는 없다. <br> 한 마디로 지효는 요즘 웃긴다.
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<!-- 전소민 -->
			<tr>
				<td><img alt="" src="imgs/runGuest6.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>전소민</h4></td>
						</tr>
						<tr>
							<td>별명 : 정신 나간 시인 <br> <br>오랫동안 지켜본 결과 돌아이가 맞음.<br> 한민관 닮은 유일한 여배우로 활동 중<br> 개그맨보다 웃길 자신 있다!<br> 과한 분장 가능<br>
								콩트 가능<br> 러브라인 가능<br> 꼬라지 가능<br> 배신 가능<br> 삭발 가능
							</td>
						</tr>

					</table>
				</td>
			</tr>
			<!-- 양세찬 -->
			<tr>
				<td><img alt="" src="imgs/runGuest7.jpg"></td>
				<td>
					<table>
						<tr>
							<td><h4>양세찬</h4></td>
						</tr>
						<tr>
							<td>별명 : 양세형 동생 <br> <br>잇몸 미남. 여자 친구가 있는 듯함.<br> 김종국의 애착 인형.<br> 하지만 뒤에서 김종국 욕을 하고 다님.<br> 종국은 일단 모른 척하다가 증거가
								잡히면 죽일 계획
							</td>
						</tr>

					</table>
				</td>
			</tr>


		</table>

	</div>
	<!-- 런닝맨 소개 끝 -->

	<br>

	<jsp:include page="footer.jsp" />
	<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>