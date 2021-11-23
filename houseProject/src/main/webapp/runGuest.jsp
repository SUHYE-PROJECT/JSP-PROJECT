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
        <tr>
        <td><img alt="" src="imgs/runGuest1.jpg"></td>
        <td>
        <table>
        <tr>
        <td>별명 : 변치 않는 예능 까불이</td>        
        </tr>
                <tr>
        <td><br>런닝맨의 자존심.
<br>본인은 아니라는데도 멤버들이 인정하는 런닝맨 외모 서열 1위.
<br>웃음이면 웃음, 추리면 추리, 스피드면 스피드.
<br>다른 멤버들의 부러움을 사는 진짜 능력자이자
<br>런닝맨의 공식 장난꾸러기. 그리고 유르스윌리스.</td>        
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