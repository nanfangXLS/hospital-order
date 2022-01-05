package com.bjpowernode.controller;

import com.bjpowernode.domain.Doctor;
import com.bjpowernode.domain.User;
import com.bjpowernode.service.DoctorService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DoctorController {

    @Resource
    private DoctorService doctorService;

    //用户登录
    @RequestMapping("/doctorLogin.do")
    public ModelAndView doctorLogin(HttpServletRequest request, Doctor doctor){
        ModelAndView mv = new ModelAndView();
        String doctorPassword = request.getParameter("doctorPassword");
        List<Doctor> doctors = doctorService.doctorLogin(doctor);
        String tips = "用户名不存在或密码错误，请重新输入";
        if(doctors.size() != 0 ){
            for(Doctor doctorList : doctors){
                if(doctorPassword.equals(doctorList.getDoctorPassword())){
                    mv.addObject("doctorName",doctorList.getDoctorName());
                    mv.setViewName("doctorLoginSuccess");
                    doctor.setDoctorName(doctorList.getDoctorName());
                    HttpSession sqlSession = request.getSession();
                    sqlSession.setAttribute("doctor",doctor);
                }else{
                    mv.addObject("tips",tips);
                    mv.setViewName("doctorLoginFail");
                }
            }
        }else {
            mv.addObject("tips",tips);
            mv.setViewName("doctorLoginFail");
        }
        return mv;
    }

    @RequestMapping("/doctorAll.do")
    @ResponseBody
    public List<Doctor> doctorAll(Doctor doctor){
        List<Doctor> doctorList = doctorService.doctorFind(doctor);
        return doctorList;
    }

    @RequestMapping("/doctors.do")
    @ResponseBody
    public List<Doctor> doctors(){
        List<Doctor> doctors = doctorService.doctorAll();
        return doctors;
    }

    @RequestMapping("/doctorDelete.do")
    @ResponseBody
    public int doctorDelete(HttpServletRequest request){
        int num = doctorService.doctorDelete(request);
        return num;
    }
}
