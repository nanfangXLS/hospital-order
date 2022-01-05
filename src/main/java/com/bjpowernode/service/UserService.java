package com.bjpowernode.service;

import com.bjpowernode.domain.User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService {
    //登录功能
    List<User> userLogin(User user);

    //验证ID是否存在功能
    List<User> userIdCunZaiSer(User user);

    //验证Email是否存在功能
    List<User> userEmailCunZaiSer(User user);

    //验证电话是否存在功能
    List<User> userPhoneCunZaiSer(User user);

    //注册功能
    int addUser(User user);

    //所有用户
    List<User> userAll();

    //删除用户
    int userDelete(HttpServletRequest request);
}
