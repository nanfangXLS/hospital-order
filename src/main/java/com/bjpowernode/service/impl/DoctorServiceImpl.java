package com.bjpowernode.service.impl;

import com.bjpowernode.dao.DoctorDao;
import com.bjpowernode.domain.Doctor;
import com.bjpowernode.service.DoctorService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
@Transactional
public class DoctorServiceImpl implements DoctorService {

    @Resource
    private DoctorDao doctorDao;

    @Override
    public List<Doctor> doctorLogin(Doctor doctor) {
        return doctorDao.doctorLoginDao(doctor);
    }

    @Override
    public List<Doctor> doctorFind(Doctor doctor) {
        return doctorDao.doctorFindDao(doctor);
    }

    @Override
    public List<Doctor> doctorAll() {
        return doctorDao.doctorAllDao();
    }

    @Override
    public int doctorDelete(HttpServletRequest request) {
        String doctorId = request.getParameter("doctorId");
        return doctorDao.doctorDeleteDao(doctorId);
    }

    @Override
    public int updateDoctorNums() {
        int num = doctorDao.updateDoctorNumsDao();
        return num;
    }
}
