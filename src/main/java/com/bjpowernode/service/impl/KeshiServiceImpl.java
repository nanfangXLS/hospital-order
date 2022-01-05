package com.bjpowernode.service.impl;

import com.bjpowernode.dao.KeshiDao;
import com.bjpowernode.domain.Keshi;
import com.bjpowernode.service.KeshiService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional
public class KeshiServiceImpl implements KeshiService {

    @Resource
    private KeshiDao keshiDao;

    @Override
    public List<Keshi> keshiAllSer() {
        return keshiDao.keshiSelectAll();
    }
}
