package comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDAO {
    private Connection conn;
    private ResultSet rs;

    public CommentDAO() {
        try {
            // mysql 접속 정보
            String dbURL = "jdbc:mysql://localhost:3306/houseproject?serverTimezone=UTC";
            String dbID = "root"; // mysql 접속 id
            String dbPassword = "oracle"; // mysql 접속 비밀번호
            Class.forName("com.mysql.cj.jdbc.Driver"); // 드라이버 인터페이스를 구현한 클래스를 로딩
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getDate() {
        String SQL = "SELECT NOW()";
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getString(1); // 현재의 날짜 반환
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    // 다음댓글의 번호 가져오기
    public int getNext() {
        String SQL = "SELECT houseproject FROM comment ORDER BY comNum DESC"; // 내림차순이기때문에 마지막글에쓴글이 제일 위에 뜸
        try {
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) + 1; // 다음댓글번호 리턴
            }
            return 1; // 끝까지 돌았을 경우 내가 유일한거니까 1 리턴
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

    // 댓글 쓰기
    public int write(int boardID, String createrID, String createdCom) {
        String SQL = "INSERT INTO COMMENT VALUES (?,?,?,?,?)";
        try {
            System.out.println("댓글 쓰기");
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, getNext());
            pstmt.setInt(2, boardID);
            pstmt.setString(3, createrID);
            pstmt.setString(4, getDate());
            pstmt.setString(5, createdCom);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

//댓글 목록
    public ArrayList<Comment> getList(int boardID, int number) {
        String SQL = "SELECT * FROM COMMENT WHERE boardID = ? ORDER BY comNum DESC LIMIT ?";
        ArrayList<Comment> list = new ArrayList<Comment>();
        try {
            System.out.println("댓글 목록");
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardID);
            pstmt.setInt(2, number);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Comment comment = new Comment();
                // DB조회 결과로나온것을 순서대로 담아서 자바단으로 저장
                comment.setComNum(rs.getInt(1));
                comment.setBoardID(rs.getInt(2));
                comment.setCreatedCom(rs.getString(3));
                comment.setCreaterID(rs.getString(4));
                comment.setCreateDate(rs.getString(5));
                list.add(comment);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

//댓글 수정
    public int update(int boardID, int comNum, String createdCom) {
        String SQL = "UPDATE COMMENT SET createdCom = ?, updateDate = ? WHERE updaterID = ? AND boardID=?";
        try {
            System.out.println("댓글 수정");
            System.out.printf("글번호 : %d    댓글번호 : %d   바꾼내용 : %s\n", boardID, comNum, createdCom);
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, createdCom);
            pstmt.setString(2, getDate());
            pstmt.setInt(3, comNum);
            pstmt.setInt(4, boardID);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

//댓글 삭제
    public int delete(int boardID, int comNum) {
        String SQL = "DELETE FROM COMMENT WHERE boardID=? and comNum = ?";
        try {
            System.out.println("댓글 삭제");
            PreparedStatement pstmt = conn.prepareStatement(SQL);
            pstmt.setInt(1, boardID);
            pstmt.setInt(2, comNum);
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

}
