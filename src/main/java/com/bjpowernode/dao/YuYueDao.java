package com.bjpowernode.dao;

import com.bjpowernode.domain.User;
import com.bjpowernode.domain.YuYue;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface YuYueDao {
    //预约功能
    int insertYuYueDao(@Param("uid") String userId, @Param("uname")String userName, @Param("kname") String keshiName,@Param("did")String doctorId, @Param("dname")String doctorName, @Param("time")String shijian, @Param("num")Integer xuhao);

    //预约历史记录功能
    List<YuYue> yuYueAllDao(String userId);

    //查看一个医生的预约病人
    List<YuYue> yuYueDoctorAllDao(String doctorId);
}
