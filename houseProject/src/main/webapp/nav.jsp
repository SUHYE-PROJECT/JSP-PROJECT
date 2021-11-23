<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commonIncludeTop.jsp"%>
<%@ include file="session.jsp" %> 

<br>
<!-- 바퀴달린집 text logo -->
<header>
	<div>
		<a href="main.jsp"><h1>런닝맨</h1></a>
	</div>
</header>

<!-- 내비게이션 시작 -->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="main.jsp">Runningman♥</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <!--  <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>-->
        <li><a href="runInfor.jsp">런닝맨 소개</a></li>
        <li><a href="runGuest.jsp">출연자 소개</a></li>
        <li><a href="#">공지사항</a></li>
        <li><a href="bbs.jsp">시청자 게시판</a></li>
        <li class="dropdown">

        </li>
      </ul>
    <% 
        if(userID == null) {
    %>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp">로그인</a></li>
        <li><a href="join.jsp">회원가입</a></li>
      </ul>
    <%
        } else {
    %>         
     <ul class="nav navbar-nav navbar-right">
      <li><a href="logoutAction.jsp">로그아웃</a></li>
      <li><a href="join.jsp">회원가입</a></li>
      </ul>
    <%
        }
    %>   
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- 내비게이션 끝 -->

    <%@ include file="/commonIncludeBottom.jsp"%>