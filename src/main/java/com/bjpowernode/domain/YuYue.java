package com.bjpowernode.domain;


public class YuYue {
    private Integer yuyueId;
    private String userId;
    private String userName;
    private String keshiName;
    private String doctorId;
    private String doctorName;
    private String shijian;
    private Integer xuhao;

    public YuYue() {
    }

    public Integer getYuyueId() {
        return yuyueId;
    }

    public void setYuyueId(Integer yuyueId) {
        this.yuyueId = yuyueId;
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

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getShijian() {
        return shijian;
    }

    public void setShijian(String shijian) {
        this.shijian = shijian;
    }

    public Integer getXuhao() {
        return xuhao;
    }

    public void setXuhao(Integer xuhao) {
        this.xuhao = xuhao;
    }

    @Override
    public String toString() {
        return "YuYue{" +
                "yuyueId=" + yuyueId +
                ", userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", keshiName='" + keshiName + '\'' +
                ", doctorId='" + doctorId + '\'' +
                ", doctorName='" + doctorName + '\'' +
                ", shijian='" + shijian + '\'' +
                ", xuhao=" + xuhao +
                '}';
    }
}
