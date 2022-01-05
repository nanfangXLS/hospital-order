package com.bjpowernode.service;

import com.bjpowernode.domain.Doctor;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface DoctorService {
    List<Doctor> doctorLogin(Doctor doctor);

    List<Doctor> doctorFind(Doctor doctor);

    List<Doctor> doctorAll();

    int doctorDelete(HttpServletRequest request);

    int updateDoctorNums();
}
