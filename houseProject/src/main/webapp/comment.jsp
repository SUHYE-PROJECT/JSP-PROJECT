<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commonIncludeTop.jsp"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "comment.Comment" %>
<%@ page import = "comment.CommentDAO" %>
<%@ page import = "java.util.ArrayList" %>




<!-- 코멘트 시작 -->
    <div class="container">
        <div class="row">
            <form method="post" action="commentAction.jsp" id="commentForm">
                <!-- 댓글번호commentID는 dao에서 증가시킬거고, 글내용은 아래, 글작성자는 세션에서 -->
                <input id="actionTypeInput" type="hidden" name = "type" value="create">
                <input type="hidden" id="bbsID" name = "bbsID" value="<%=bbs.getBbsID() %>">
                <input type="hidden" id="commentID" name = "commentID" value=0>
                <table class="table table-striped" style="text-align: center; border: 2px solid #dddddd; height: 70px;">
                    <tr>
                        <td class="col-md-1 align-middle"><%= userID %></td>
                        <td class="col-md-8"><textarea id = "commentText" style="height:50px;" class="form-control" placeholder="댓글을 입력해주세요." name="commentText"></textarea></td>
                        <!-- 제출버튼 -->
                        <td class="col-md-3 align-middle">
                           <input type="button" id="commentTextResetButton" class="btn btn-dark" value="초기화" onclick = "resetCommentText();"/></input>
                           <input type="submit" id="commentTextUpdateButton" class="btn btn-info"></input>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>





<!-- 코멘트 끝 -->

    <%@ include file="/commonIncludeBottom.jsp"%>
