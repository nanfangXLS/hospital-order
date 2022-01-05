package com.bjpowernode.controller;

import com.bjpowernode.domain.Doctor;
import com.bjpowernode.domain.Gover;
import com.bjpowernode.service.DoctorService;
import com.bjpowernode.service.GoverService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class GoverController {

    @Resource
    private GoverService goverService;

    //管理员登录
    @RequestMapping("/goverLogin.do")
    public ModelAndView doctorLogin(HttpServletRequest request, Gover gover){
        ModelAndView mv = new ModelAndView();
        String goverPassword = request.getParameter("goverPassword");
        List<Gover> govers = goverService.goverLogin(gover);
        String tips = "用户名不存在或密码错误，请重新输入";
        if(govers.size() != 0 ){
            for(Gover goverList : govers){
                if(goverPassword.equals(goverList.getGoverPassword())){
                    mv.setViewName("goverLoginSuccess");
                }else{
                    mv.addObject("tips",tips);
                    mv.setViewName("goverLoginFail");
                }
            }
        }else {
            mv.addObject("tips",tips);
            mv.setViewName("goverLoginFail");
        }
        return mv;
    }
}
