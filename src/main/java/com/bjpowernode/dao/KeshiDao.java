package com.bjpowernode.dao;

import com.bjpowernode.domain.Keshi;

import java.util.List;

public interface KeshiDao {
    //找出所有科室
    List<Keshi> keshiSelectAll();
}
