package com.bjpowernode.dao;

import com.bjpowernode.domain.Doctor;
import com.bjpowernode.domain.Gover;

import java.util.List;

public interface GoverDao {
    //登录功能
    List<Gover> goverLoginDao(Gover gover);
}
