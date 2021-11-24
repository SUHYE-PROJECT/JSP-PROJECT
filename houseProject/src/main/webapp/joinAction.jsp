<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id = "user" class="user.User" scope="page" />
<jsp:setProperty name ="user" property="userID" />
<jsp:setProperty name ="user" property="userPW" />
<jsp:setProperty name ="user" property="userName" />
<jsp:setProperty name ="user" property="userPhone" />
<jsp:setProperty name ="user" property="userType" />
<jsp:setProperty name ="user" property="userWithdraw" />
<jsp:setProperty name ="user" property="userMarketSelect" />


<!DOCTYPE html>
<html>
<!--  main : 홈페이지 접속 시 보이는 화면 -->

<!-- head -->
<head>
<meta charset="UTF-8">
</head>

<!-- body -->
<body>

    <%@ include file="session.jsp" %>



     <%
        if(userID !=null){  //이미 로그인된사람은 회원가입 할수없도록 하는 처리. 회원가입하려면 로그아웃하고        
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 로그인 되어있습니다.')");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
    
    
       /* 유효성검사 */
       /* 널검사 */
       if(user.getUserID()==null || user.getUserPW()==null || user.getUserName()==null 
       || user.getUserPhone()==null){
           PrintWriter script = response.getWriter();
           script.println("<script>");
           script.println("alert('입력이 안 된 사항이 있습니다.')");
           script.println("history.back()");
           script.println("</script>");
       }else{
            UserDAO userDAO = new UserDAO();
            int result = userDAO.join(user);   //회원가입 실행
            
            if(result == -1){      //회원가입 실패
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('이미 존재하는 아이디입니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
            else {                 //회원가입 성공
                session.setAttribute("userID", user.getUserID());   //세션값부여
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('회원가입되었습니다.')");
                script.println("location.href = 'main.jsp'");
                script.println("</script>");
            }
       }
    %>
</body>
</html>