package com.bjpowernode.domain;

public class Doctor {
    private String doctorId;
    private String doctorName;
    private String doctorPassword;
    private String doctorSex;
    private Integer doctorAge;
    private String doctorEmail;
    private String doctorPhone;
    private String doctorText;
    private Integer keshiId;
    private String keshiName;
    private Integer nums;

    public Doctor() {
    }

    public Integer getNums() {
        return nums;
    }

    public void setNums(Integer nums) {
        this.nums = nums;
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

    public String getDoctorPassword() {
        return doctorPassword;
    }

    public void setDoctorPassword(String doctorPassword) {
        this.doctorPassword = doctorPassword;
    }

    public String getDoctorSex() {
        return doctorSex;
    }

    public void setDoctorSex(String doctorSex) {
        this.doctorSex = doctorSex;
    }

    public Integer getDoctorAge() {
        return doctorAge;
    }

    public void setDoctorAge(Integer doctorAge) {
        this.doctorAge = doctorAge;
    }

    public String getDoctorEmail() {
        return doctorEmail;
    }

    public void setDoctorEmail(String doctorEmail) {
        this.doctorEmail = doctorEmail;
    }

    public String getDoctorPhone() {
        return doctorPhone;
    }

    public void setDoctorPhone(String doctorPhone) {
        this.doctorPhone = doctorPhone;
    }

    public String getDoctorText() {
        return doctorText;
    }

    public void setDoctorText(String doctorText) {
        this.doctorText = doctorText;
    }

    public Integer getKeshiId() {
        return keshiId;
    }

    public void setKeshiId(Integer keshiId) {
        this.keshiId = keshiId;
    }

    public String getKeshiName() {
        return keshiName;
    }

    public void setKeshiName(String keshiName) {
        this.keshiName = keshiName;
    }

    @Override
    public String toString() {
        return "Doctor{" +
                "doctorId='" + doctorId + '\'' +
                ", doctorName='" + doctorName + '\'' +
                ", doctorPassword='" + doctorPassword + '\'' +
                ", doctorSex='" + doctorSex + '\'' +
                ", doctorAge=" + doctorAge +
                ", doctorEmail='" + doctorEmail + '\'' +
                ", doctorPhone='" + doctorPhone + '\'' +
                ", doctorText='" + doctorText + '\'' +
                ", keshiId=" + keshiId +
                ", keshiName='" + keshiName + '\'' +
                ", nums=" + nums +
                '}';
    }
}
