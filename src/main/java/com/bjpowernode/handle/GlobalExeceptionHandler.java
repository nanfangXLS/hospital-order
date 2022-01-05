package com.bjpowernode.handle;

import com.bjpowernode.exception.UserAddException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.NestedServletException;

@ControllerAdvice
public class GlobalExeceptionHandler {

    //用户注册功能异常处理
    @ExceptionHandler(value = UserAddException.class)
    public ModelAndView userAddException(Exception exception){
        ModelAndView mv = new ModelAndView();
        mv.addObject("tips","您未按照提示进行注册，注册失败，请重新注册");
        mv.setViewName("userAddFail");
        return mv;
    }
}
