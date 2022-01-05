package com.bjpowernode.service.impl;

import com.bjpowernode.dao.GoverDao;
import com.bjpowernode.domain.Gover;
import com.bjpowernode.service.GoverService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class GoverServiceImpl implements GoverService {

    @Resource
    private GoverDao goverDao;

    @Override
    public List<Gover> goverLogin(Gover gover) {
        return goverDao.goverLoginDao(gover);
    }
}
