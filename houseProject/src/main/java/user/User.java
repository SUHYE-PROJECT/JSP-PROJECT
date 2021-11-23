package user;

public class User {
	private String userID; // ID
	private String userPW; // 비밀번호
	private String userName; // 이름
	private String userPhone; // 전화번호
	private int userType; // 관리자, 일반회원
	private int userWithdraw; // 활동상태
	private int userMarketSelect; // 수신 선택동의

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}

	public int getUserWithdraw() {
		return userWithdraw;
	}

	public void setUserWithdraw(int userWithdraw) {
		this.userWithdraw = userWithdraw;
	}

	public int getUserMarketSelect() {
		return userMarketSelect;
	}

	public void setUserMarketSelect(int userMarketSelect) {
		this.userMarketSelect = userMarketSelect;
	}

}
