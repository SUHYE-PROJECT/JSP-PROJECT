package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn;
	private ResultSet rs;

	public BbsDAO() {
		try {
			// mysql 접속 정보
			String dbURL = "jdbc:mysql://localhost:3306/BBS?characterEncoding=UTF-8&serverTimezone=UTC";
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

	// 다음글의 번호 가져오기
	public int getNext() {
		String SQL = "SELECT boardID FROM board ORDER BY boardID DESC"; // 내림차순이기 때문에 마지막글에 쓴글이 제일 위에 뜸
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1; // 다음게시물(현재글보다 boardID가 낮은글)번호 리턴
			}
			return 1; // 끝까지 돌아을 경우 내가 유일한거니까 1 리턴
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	// 글쓰기
	public int write(String boardTitle, String createrID, String boardContent) {
		String SQL = "INSERT INTO board (boardID, boardTitle, createrID, createDate, boardContent, boardAvailable) VALUES (?,?,?,?,?,?)";
		try {
			System.out.println("글쓰기");
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, boardTitle);
			pstmt.setString(3, createrID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, boardContent);
			pstmt.setInt(6, 1); // available. 첫글을 썼을땐 true
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}

	public ArrayList<Bbs> getList(int pageNumber) {

	}

}
