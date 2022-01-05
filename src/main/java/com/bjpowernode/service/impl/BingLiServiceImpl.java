package com.bjpowernode.service.impl;

import com.bjpowernode.dao.BingLiDao;
import com.bjpowernode.domain.BingLi;
import com.bjpowernode.domain.User;
import com.bjpowernode.service.BingLiService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class BingLiServiceImpl implements BingLiService {

    @Resource
    private BingLiDao bingLiDao;

    //医生记录病历
    @Override
    public int insertBingLi(BingLi bingLi) {
        String bingLiTime = null;
        Date date = new Date();
        DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
        bingLiTime = dFormat.format(date);
        bingLi.setBingLiTime(bingLiTime);
        int num = bingLiDao.insertBingLiDao(bingLi);
        return num;
    }

    //该用户的所有病历
    @Override
    public List<BingLi> bingLiAll(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        String userId = user.getUserId();
        List<BingLi> bingLis = bingLiDao.bingLiAllDao(userId);
        return bingLis;
    }
}
