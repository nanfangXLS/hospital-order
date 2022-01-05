package com.bjpowernode.service;

import com.bjpowernode.domain.BingLi;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BingLiService {

    int insertBingLi(BingLi bingLi);

    List<BingLi> bingLiAll(HttpServletRequest request);
}
