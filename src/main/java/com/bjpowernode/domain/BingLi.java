package com.bjpowernode.domain;

public class BingLi {
    private Integer bingLiId;
    private String userId;
    private String userName;
    private String keshiName;
    private String doctorName;
    private String userBingLi;
    private String bingLiTime;

    public BingLi() {
    }

    public Integer getBingLiId() {
        return bingLiId;
    }

    public void setBingLiId(Integer bingLiId) {
        this.bingLiId = bingLiId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getKeshiName() {
        return keshiName;
    }

    public void setKeshiName(String keshiName) {
        this.keshiName = keshiName;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getUserBingLi() {
        return userBingLi;
    }

    public void setUserBingLi(String userBingLi) {
        this.userBingLi = userBingLi;
    }

    public String getBingLiTime() {
        return bingLiTime;
    }

    public void setBingLiTime(String bingLiTime) {
        this.bingLiTime = bingLiTime;
    }

    @Override
    public String toString() {
        return "BingLi{" +
                "bingLiId=" + bingLiId +
                ", userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", keshiName='" + keshiName + '\'' +
                ", doctorName='" + doctorName + '\'' +
                ", userBingLi='" + userBingLi + '\'' +
                ", bingLiTime='" + bingLiTime + '\'' +
                '}';
    }
}
