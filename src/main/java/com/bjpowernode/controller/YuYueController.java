package com.bjpowernode.controller;

import com.bjpowernode.domain.YuYue;
import com.bjpowernode.service.YuYueService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class YuYueController {

    @Resource
    private YuYueService yuYueService;

    //预约
    @RequestMapping(value = "yuyue.do")
    @ResponseBody
    public int yuyue(HttpServletRequest request){
        int num = yuYueService.insertYuyue(request);
        return num;
    }

    //用户查看预约历史记录
    @RequestMapping(value = "yuYueHistory.do")
    @ResponseBody
    public List<YuYue> yuYueHistory(HttpServletRequest request){
        List<YuYue> yuYueList = yuYueService.yuYueAll(request);
        return yuYueList;
    }

    //医生查看预约自己的病人
    @RequestMapping(value = "yuYueDoctorAll.do")
    @ResponseBody
    public List<YuYue> yuYueDoctorAll(HttpServletRequest request){
        List<YuYue> yuYueList  = yuYueService.yuYueDoctorAll(request);
        return yuYueList;
    }
}
