package com.bjpowernode.dao;

import com.bjpowernode.domain.BingLi;

import java.util.List;

public interface BingLiDao {

    //记录病历
    int insertBingLiDao(BingLi bingLi);

    //查找病历历史记录
    List<BingLi> bingLiAllDao(String userId);
}
