package com.bjpowernode.domain;

public class Keshi {
    private Integer keshiId;
    private String keshiName;

    public Keshi() {
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
        return "Keshi{" +
                "keshiId=" + keshiId +
                ", keshiName='" + keshiName + '\'' +
                '}';
    }
}
