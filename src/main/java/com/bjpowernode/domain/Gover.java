package com.bjpowernode.domain;

public class Gover {
    private String goverId;
    private String goverPassword;

    public Gover() {
    }

    public String getGoverId() {
        return goverId;
    }

    public void setGoverId(String goverId) {
        this.goverId = goverId;
    }

    public String getGoverPassword() {
        return goverPassword;
    }

    public void setGoverPassword(String goverPassword) {
        this.goverPassword = goverPassword;
    }

    @Override
    public String toString() {
        return "Gover{" +
                "goverId='" + goverId + '\'' +
                ", goverPassword='" + goverPassword + '\'' +
                '}';
    }
}
