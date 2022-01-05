package com.bjpowernode.service.impl;

import com.bjpowernode.dao.UserDao;
import com.bjpowernode.domain.User;
import com.bjpowernode.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public List<User> userLogin(User user) {
        return userDao.userLoginDao(user);
    }

    @Override
    public List<User> userIdCunZaiSer(User user) {
        return userDao.userIdCunZaiDao(user);
    }

    @Override
    public List<User> userEmailCunZaiSer(User user) {
        return userDao.userEmailCunZaiDao(user);
    }

    @Override
    public List<User> userPhoneCunZaiSer(User user) {
        return userDao.userPhoneCunZaiDao(user);
    }

    @Override
    public int addUser(User user) {
        return userDao.userInsertDao(user);
    }

    @Override
    public List<User> userAll() {
        return userDao.userAllDao();
    }

    @Override
    public int userDelete(HttpServletRequest request) {
        String userId = request.getParameter("userId");
        return userDao.userDeleteDao(userId);
    }
}
