package com.bjpowernode.service.impl;

import com.bjpowernode.dao.DoctorDao;
import com.bjpowernode.dao.UserDao;
import com.bjpowernode.dao.YuYueDao;
import com.bjpowernode.domain.Doctor;
import com.bjpowernode.domain.User;
import com.bjpowernode.domain.YuYue;
import com.bjpowernode.service.YuYueService;
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
public class YuYueServiceImpl implements YuYueService {

    @Resource
    UserDao userDao;

    @Resource
    DoctorDao doctorDao;

    @Resource
    YuYueDao yuYueDao;

    //用户预约
    @Override
    public int insertYuyue(HttpServletRequest request) {
        //获得当前登录的用户
        User user = (User) request.getSession().getAttribute("user");
        String userId = user.getUserId();
        String userName = user.getUserName();
        String shijian = null;
        //获取当前需要的医生
        String doctorId = request.getParameter("doctorId");
        Doctor doctor = doctorDao.doctorNameDao(doctorId);
        if(doctor.getNums() != 0){
            doctorDao.updateNumsDao(doctor);
            //记录什么时候进行预约
            Date date = new Date();
            DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
            shijian = dFormat.format(date);
            String doctorName = doctor.getDoctorName();
            String keshiName = doctor.getKeshiName();
            int nums = 20-doctor.getNums()+1;
            int num = yuYueDao.insertYuYueDao(userId,userName,keshiName,doctorId,doctorName,shijian,nums);
            return num;
        }else {
            //此时该医生全部预约完
            return 0;
        }
    }

    //查看该用户的全部预约记录
    @Override
    public List<YuYue> yuYueAll(HttpServletRequest request) {
        //获得当前登录的用户
        User user = (User) request.getSession().getAttribute("user");
        String userId = user.getUserId();
        List<YuYue> yuYueList = yuYueDao.yuYueAllDao(userId);
        return yuYueList;
    }

    @Override
    public List<YuYue> yuYueDoctorAll(HttpServletRequest request) {
        //获得当前登录的医生
        Doctor doctor = (Doctor)request.getSession().getAttribute("doctor");
        String doctorId = doctor.getDoctorId();
        List<YuYue> yuYueList = yuYueDao.yuYueDoctorAllDao(doctorId);
        return yuYueList;
    }


}
