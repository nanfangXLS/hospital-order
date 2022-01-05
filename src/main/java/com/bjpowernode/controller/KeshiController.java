package com.bjpowernode.controller;

import com.bjpowernode.domain.Keshi;
import com.bjpowernode.service.KeshiService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class KeshiController {

    @Resource
    private KeshiService keshiService;

    //列出所有科室
    @RequestMapping("/keshiAll.do")
    @ResponseBody
    public List<Keshi> keshiAll(){
        List<Keshi> keshiList = keshiService.keshiAllSer();
        return keshiList;
    }

}
