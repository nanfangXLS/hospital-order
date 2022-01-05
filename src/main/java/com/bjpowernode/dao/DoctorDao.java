package com.bjpowernode.dao;

import com.bjpowernode.domain.Doctor;
import com.bjpowernode.domain.Keshi;

import java.util.List;

public interface DoctorDao {
    //登录功能
    List<Doctor> doctorLoginDao(Doctor doctor);
    //查询某个科室所有医生
    List<Doctor> doctorFindDao(Doctor doctor);
    //查询医生的姓名
    Doctor doctorNameDao(String doctorId);
    //更新医生的预约剩余次数
    int updateNumsDao(Doctor doctor);

    //查询所有医生
    List<Doctor> doctorAllDao();

    //删除医生
    int doctorDeleteDao(String doctorId);

    //更新医生每天的预约次数
    int updateDoctorNumsDao();
}
