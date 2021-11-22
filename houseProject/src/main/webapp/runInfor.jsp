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

	<!-- 런닝맨 소개 끝 -->

	<br>

	<jsp:include page="footer.jsp" />
	<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>