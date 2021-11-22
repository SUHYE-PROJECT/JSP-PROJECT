package comment;

public class Comment {
    private int comNum;
    private int boardID;
    private String createrID;
    private String createDate;
    private String createdCom;
    private String updaterID;
    private String updateDate;

    public int getComNum() {
        return comNum;
    }

    public void setComNum(int comNum) {
        this.comNum = comNum;
    }

    public int getBoardID() {
        return boardID;
    }

    public void setBoardID(int boardID) {
        this.boardID = boardID;
    }

    public String getCreaterID() {
        return createrID;
    }

    public void setCreaterID(String createrID) {
        this.createrID = createrID;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getCreatedCom() {
        return createdCom;
    }

    public void setCreatedCom(String createdCom) {
        this.createdCom = createdCom;
    }

    public String getUpdaterID() {
        return updaterID;
    }

    public void setUpdaterID(String updaterID) {
        this.updaterID = updaterID;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

}
