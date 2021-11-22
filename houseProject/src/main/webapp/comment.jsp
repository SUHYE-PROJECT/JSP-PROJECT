<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commonIncludeTop.jsp"%>



<!-- 코멘트 시작 -->
    <div class="container">
        <div ></div>
        <div>
            <div  style="paddint-top: 20px;">
                <form method="post" action="joinAction.jsp">
<div class="container">
    <div class="row">
        <div class="panel panel-default widget">
            <div class="panel-heading">
                <span class="glyphicon glyphicon-comment"></span>
                <h3 class="panel-title">
                    댓글 작성</h3>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <div class="row">

                            <div class="col-xs-10 col-md-11">
                                <div>
                                    <a href="http://www.jquery2dotnet.com/2013/10/google-style-login-page-desing-usign.html">
                                        Google Style Login Page Design Using Bootstrap</a>
                                    <div class="mic-info">
                                        By: <a href="#">Bhaumik Patel</a> on 2 Aug 2013
                                    </div>
                                </div>
                                <div class="comment-text">
                                    Awesome design
                                </div>
                                <div class="action">
                                    <button type="button" class="btn btn-primary btn-xs" title="Edit">
                                        수정
                                    </button>
                                    <button type="button" class="btn btn-success btn-xs" title="Approved">
                                        완료
                                    </button>
                                    <button type="button" class="btn btn-danger btn-xs" title="Delete">
                                        삭제
                                    </button>
                                    
                                                   <tr>
                       <td>작성자</td>
                       <td colspan="2"><%= comment.getUserID() %></td>
                   </tr>
                   <tr>
                       <td>작성일자</td>
                       <td colspan="2"><%= comment.getBbsDate().substring(0,11) + " " + bbs.getBbsDate().substring(11,13)+"시 " + comment.getBbsDate().substring(14,16) + "분"%></td>
                   </tr>       
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>




                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="전화번호" name="userPhone" maxlength="15" />
                    </div>
  
                <input type="hidden" name="userType" value="">
                <input type="hidden" name="userWithdraw" value="">
                <input type="hidden" name="userMarketSelect" value="">
                </form>
            </div>
        </div>      <div class="col-lg-4"></div>

    </div>










<!-- 코멘트 끝 -->

    <%@ include file="/commonIncludeBottom.jsp"%>
