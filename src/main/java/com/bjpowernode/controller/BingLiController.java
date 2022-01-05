package com.bjpowernode.controller;

import com.bjpowernode.domain.BingLi;
import com.bjpowernode.service.BingLiService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BingLiController {

    @Resource
    private BingLiService bingLiService;

    //记录病情
    @RequestMapping(value = "bingLi.do")
    public ModelAndView bingLi(BingLi bingLi){
        ModelAndView mv = new ModelAndView();
        int num = bingLiService.insertBingLi(bingLi);
        if(num != 0){
            mv.addObject("userName",bingLi.getUserName());
            mv.setViewName("bingLiSuccess");
        }else {
            mv.addObject("userName",bingLi.getUserName());
            mv.setViewName("bingliFail");
        }
        return mv;
    }

    //获取所有病历
    @RequestMapping(value = "bingLiAll.do")
    @ResponseBody
    public List<BingLi> bingLiAll(HttpServletRequest request){
        List<BingLi> bingLis = bingLiService.bingLiAll(request);
        return bingLis;
    }
}
