package com.bjpowernode.dao;

import com.bjpowernode.domain.User;

import java.util.List;

public interface UserDao {
    //登录功能
    List<User> userLoginDao(User user);

    //验证ID是否存在功能
    List<User> userIdCunZaiDao(User user);

    //验证Email是否存在功能
    List<User> userEmailCunZaiDao(User user);

    //验证电话是否存在功能
    List<User> userPhoneCunZaiDao(User user);

    //注册功能
    int userInsertDao(User user);

    //搜索所有用户
    List<User> userAllDao();

    //删除用户
    int userDeleteDao(String userId);
}
