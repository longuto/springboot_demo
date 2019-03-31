package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.pojo.po.PubStock;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PubStockService extends IService<PubStock> {

    public List<PubStock> findStockByNumber(String number);
}
