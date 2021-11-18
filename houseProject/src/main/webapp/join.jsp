<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--  main : 홈페이지 접속 시 보이는 화면 -->

<!-- head -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<%@ include file="/commonIncludeTop.jsp"%>


<title>회원가입</title>
</head>

<!-- body -->
<body>

	<!-- 내비게이션 -->
	<jsp:include page="nav.jsp" />


	<!-- 회원가입 서식 -->

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="paddint-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">

						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" />

					</div>

					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
					</div>

					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 재확인" name="userPassword" maxlength="20" />
					</div>

					<div class="form-group">
						<!-- 이름 -->
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20" />
					</div>

					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20" />
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입" />

				</form>

			</div>
		</div>
		<div class="col-lg-4"></div>

	</div>



	<jsp:include page="footer.jsp" />
	<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>