<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="comment.Comment"%>
<%@ page import="comment.CommentDAO"%>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<%@ include file="/commonIncludeTop.jsp"%>
<title>글 자세히 보기</title>
</head>
<body>
	<%@ include file="session.jsp"%><!-- 정적포함 -->
	<%
	int boardID = 0;
	int comNum = 0;
	if (request.getParameter("boardID") != null) { //request에 boardID가 없다면
		boardID = Integer.parseInt(request.getParameter("boardID")); //다시 받아오도록
	}
	if (boardID == 0) { //그래도 못받아왔으면 경고주고 글목록으로 이동
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(boardID);	//해당 글데이터 받아오기
	Comment comment = new Comment();
	
	%>


	<jsp:include page="nav.jsp" />

	<!-- 게시판 상세보기 화면 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped  " style="text-align: center";>
				<thead>
					<tr>
						<th colspan="3" style="backgroud-color: #eeeeee; text-align: center;">글 자세히보기</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td style="width: 20%">글 제목</td>
						<td colspan="2"><%=bbs.getBoardTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n",
		"<br>")%></td>
						<!-- 특수문자나 공백, 줄띄움 처리 -->
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%=bbs.getCreaterID()%></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%=bbs.getCreateDate().substring(0, 11) + " " + bbs.getCreateDate().substring(11, 13) + "시 "
		+ bbs.getCreateDate().substring(14, 16) + "분"%></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;"><%=bbs.getBoardContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></td>
						<!-- 특수문자나 공백, 줄띄움 처리 -->
					</tr>
					<tr>
						<td>조회수</td>
						<td colspan="2"><%=bbs.getViewCount()%></td>
					</tr>

				</tbody>
			</table>
			<div class="text-center">
				<a href="bbs.jsp" class="btn btn-primary pull-width">목록</a>
			</div>
			<!-- 작성자가 본인이라면 수정과 삭제가 가능하도록 -->
			<%
			if (userID != null && userID.equals(bbs.getCreaterID())) {
			%>

			<div class="row-fluid">
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?boardID=<%=boardID%>" class="btn btn-danger pull-right">삭제</a>
			</div>
			<div class="row-fluid">
				<a href="update.jsp?boardID=<%=boardID%>" class="btn btn-success pull-right">수정</a>
			</div>


			<%
			}
			%>
		</div>
	</div>
	<br>
	<br>
	
    
	<!-- 댓글 작성 -->
	<div class="container">
		<div class="row">
			<form method="post" action="commentAction.jsp" id="commentForm">
				<!-- 댓글번호comNum는 dao에서 증가시킬거고, 글내용은 아래, 글작성자는 세션에서 -->
				<input id="actionTypeInput" type="hidden" name="type" value="create"> <input type="hidden" id="comNum" name="comNum" value=0>
				<input type="hidden" id="comNum" name = "comNum" value=0>
				<input
					type="hidden" id="boardID" name="boardID" value="<%=bbs.getBoardID()%>">
					<input type="hidden" id="createDate" name = "createDate" value="<%=comment.getCreateDate()%>">
				<table class="table table-striped" style="text-align: center; border: 2px solid #dddddd; height: 70px;">
					<tr>
						<td class="col-md-1 align-middle"><%=userID%></td>
						

						<td class="col-md-8"><textarea id="createdCom" style="height: 50px;" class="form-control" placeholder="댓글을 입력해주세요." name="createdCom"></textarea></td>
						<!-- 제출버튼 -->
						<td class="col-md-3 align-middle"><input type="button" id="createdComResetButton" class="btn btn-dark" value="초기화"
							onclick="resetCreatedCom();" /></input> <input type="submit" id="createdComUpdateButton" class="btn btn-info"></input></td>
					</tr>
				</table>
			</form>
		</div>
	</div>


	<!-- 댓글 리스트 -->
	<div class="container">
		<div class="row">
			<table id="commentTable" class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="backgroud-color: #eeeeee; text-align: center;">작성자</th>
						<th style="backgroud-color: #eeeeee; text-align: center;">내용</th>
						<th style="backgroud-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>

					<!-- 댓글 리스트 데이터 -->
					<%
					CommentDAO commentDAO = new CommentDAO();
					ArrayList<Comment> list = commentDAO.getList(bbs.getBoardID(), 10);
					for (int i = 0; i < list.size(); i++) {
					%>
					<!-- 작성자, 댓글내용, 댓글작성날짜, 수정버튼 ,삭제버튼 -->
					<tr>
						<td class="col-md-2"><%=list.get(i).getCreaterID()%></td>
						<!-- 작성자 -->
						<td class="col-md-7"><%=list.get(i).getCreatedCom()%></td>
						<!-- 댓글내용 -->
						<td class="col-md-2"><%=list.get(i).getCreateDate()%></td>
						<!-- 댓글작성날짜 -->

						<%
						if (userID.equals(list.get(i).getCreaterID())) { //댓글 작성자와 로그인유저가 같으면 수정,삭제 버튼 표시
						%>
						<td class="col-md-1 ">
							<!-- 댓글수정버튼 --> <img class="modifyBtn" src="images/yellow_modify.png" alt=""
							onclick="updateComment(<%=list.get(i).getBoardID()%>, <%=list.get(i).getComNum()%>);" /> <!-- 댓글삭제버튼 --> <img class="minusBtn"
							src="images/red_minus.png" alt="" onclick="confirmDelete(<%=list.get(i).getBoardID()%>, <%=list.get(i).getComNum()%>);" />
						</td>

						<%
						} else { //댓글작성자와 로그인유저가 다르다면 표시안함
						%>
						<td class="col-md-1 "></td>

						<%
						}
						%>


					</tr>

					<%
					} //end of for list
					%>
				</tbody>
			</table>
		</div>
	</div>


	<script>
    let writer = null;
    let createdCom = null;
    let createDate = null;
    let boardID = null;
    let comNum = null;
    
    

    
    //댓글수정 버튼 눌렀을때 호출. 해당댓글의 정보 가져옴
    function updateComment(boardID, comNum){
        //클릭한 행의 3개 컬럼 정보 변수에 저장
        $("#commentTable tbody").on("click", "tr", function(){

            writer = $(this).find("td:eq(0)").text();
            createdCom = $(this).find("td:eq(1)").text();
            createDate = $(this).find("td:eq(2)").text();
            

            comNum = $("#comNum").val(comNum);
            
            console.log(comNum);
            console.log(createdCom);
            $("#createdCom").val(contentText);
            $("#createdComUpdateButton").attr('class','btn btn-warning');
            $("#actionTypeInput").val("update");
            $("#createdCom").focus();
        });
    }
    
    
    // 댓글 삭제. 안전을 위해서 post방식으로 구현
    function deleteComment(boardID, comNum){
        let url = 'commentAction.jsp';
        let params = {
                "boardID" : boardID,
                "comNum" : comNum,
                "type" : 'delete'
        }
        
        let form = document.createElement('form');
        form.setAttribute('method', 'post');
        form.setAttribute('action', url);
        document.charset = "utf-8";
        
        for (let key in params){
            let hiddenField = document.createElement('input');
            hiddenField.setAttribute('type', 'hidden');
            hiddenField.setAttribute('name', key);
            hiddenField.setAttribute('value', params[key]);
            form.appendChild(hiddenField);
        }
        
        document.body.appendChild(form);
        form.submit();
        

/*          $.ajax(
            { type: "POST",
              url: "commentAction.jsp",
              data: { //전달할 변수와 값
                  type : "delete",
                  boardID : boardID,
                  comNum : comNum
              },
              
              success: function(data) {   //정상 실행시 콜백함수
                    alert("success!");
              },
              error: function(error) {    //비정상 실행시 콜백함수
                    alert("Error!");
              },

              dataType: 'json'    //응답결과의 데이터형식
            }
        );  */
    }
    

    // 댓글 삭제 버튼 눌렀을때 작동. 댓글 삭제한다는 경고창
    function confirmDelete(boardID, comNum){
        let msg = confirm("해당 댓글을 삭제하시겠습니까?");
        if(msg == true){
            deleteComment(boardID, comNum);
        }
        else{
            return false; //삭제 취소
        }
    }
    
    
    
    function resetCreatedCom(){
        $("#createdCom").val("");//reset은 왜안되나 모르겠고 이걸로 해결
        
    }
        


    
    </script>

	<%@ include file="/commonIncludeBottom.jsp"%>
</body>
</html>