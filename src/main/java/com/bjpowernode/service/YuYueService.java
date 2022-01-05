package com.bjpowernode.service;

import com.bjpowernode.domain.YuYue;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface YuYueService {
    //预约事务
    int insertYuyue(HttpServletRequest request);

    //预约历史记录
    List<YuYue> yuYueAll(HttpServletRequest request);

    //医生查看自己的预约记录
    List<YuYue> yuYueDoctorAll(HttpServletRequest request);
}
