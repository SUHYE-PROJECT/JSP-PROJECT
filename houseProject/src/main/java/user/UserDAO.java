package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public UserDAO() {
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

    public int login(String userID, String userPW) {
        String SQL = "SELECT userPW FROM USER WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID); // 첫번째 ?에 userID의 값 대입
            rs = pstmt.executeQuery(); // 준비된 쿼리를 실행시키고 결과값을 rs에 대입
            if (rs.next()) { // 존재한다면
                if (rs.getString(1).equals(userPW))
                    return 1; // 유저가 입력한 비밀번호와 db의 비밀번호가 같다면 로그인 성공
                else
                    return 0; // 다르다면 비밀번호 불일치
            } else {
                return -1; // 존재하지 않느다면 아이디가 없음
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // 데이터베이스 오류
    }

//    회원가입
    public int join(User user) {
        String SQL = "INSERT INTO USER VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID()); // 아이디
            pstmt.setString(2, user.getUserPW()); // 비밀번호
            pstmt.setString(3, user.getUserName()); // 이름
            pstmt.setString(4, user.getUserPhone()); // 전화번호
            pstmt.setInt(5, user.getUserType()); // 전화번호
            pstmt.setInt(6, user.getUserWithdraw()); // 전화번호
            pstmt.setInt(7, user.getUserMarketSelect()); // 전화번호

            return pstmt.executeUpdate(); // SELECT빼고 모든 쿼리실행
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }

}