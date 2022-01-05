package com.bjpowernode.controller;

import com.bjpowernode.domain.User;
import com.bjpowernode.exception.UserAddException;
import com.bjpowernode.service.UserService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private UserService userService;

    //用户登录
    @RequestMapping("/userLogin.do")
    public ModelAndView userLogin(HttpServletRequest request,User user){
        ModelAndView mv = new ModelAndView();
        String userPassword = request.getParameter("userPassword");
        List<User> users = userService.userLogin(user);
        String tips = "用户名不存在或密码错误，请重新输入";
        if(users.size() != 0 ){
            for(User userlist : users){
                if(userPassword.equals(userlist.getUserPassword())){
                    mv.addObject("userName",userlist.getUserName());
                    mv.setViewName("userLoginSuccess");
                    user.setUserName(userlist.getUserName());
                    HttpSession sqlSession = request.getSession();
                    sqlSession.setAttribute("user",user);
                }else{
                    mv.addObject("tips",tips);
                    mv.setViewName("userLoginFail");
                }
            }
        }else {
            mv.addObject("tips",tips);
            mv.setViewName("userLoginFail");
        }
        return mv;
    }
    //验证身份证是否合法
    @RequestMapping("/userIdCunZai.do")
    @ResponseBody
    public List<User> userIdCunZai(HttpServletRequest request,User user) {
        List<User> users = userService.userIdCunZaiSer(user);
        return users;
    }
    //验证Email是否合法
    @RequestMapping("/userEmailCunZai.do")
    @ResponseBody
    public List<User> userEmailCunZai(User user) {
        List<User> users = userService.userEmailCunZaiSer(user);
        return users;
    }
    //验证电话是否合法
    @RequestMapping("/userPhoneCunZai.do")
    @ResponseBody
    public List<User> userPhoneCunZai(User user) {
        List<User> users = userService.userPhoneCunZaiSer(user);
        return users;
    }

    //注册功能
    @RequestMapping("/userAdd.do")
    public ModelAndView userAdd(HttpServletRequest request,User user) throws UserAddException {
        ModelAndView mv = new ModelAndView();
        String tips = "";

        HttpSession sqlSession = request.getSession();
        sqlSession.setAttribute("userId",user.getUserId());

        int nums = userService.addUser(user);
        if(nums > 0){
            tips = "用户" + user.getUserName() + "注册成功";
            mv.addObject("tips",tips);
            mv.setViewName("userAddSuccess");
        }else {
            throw new UserAddException();
        }
        return mv;
    }

    //搜索所有用户
    @RequestMapping(value = "userAll.do")
    @ResponseBody
    public List<User> userAll(){
        List<User> userList = userService.userAll();
        return userList;
    }

    //删除用户
    @RequestMapping(value = "userDelete.do")
    @ResponseBody
    public int userDelete(HttpServletRequest request){
        int num = userService.userDelete(request);
        return num;
    }
}
