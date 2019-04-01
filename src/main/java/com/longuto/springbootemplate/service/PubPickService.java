package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.pojo.po.PubPick;

import java.util.List;

public interface PubPickService extends IService<PubPick> {

    public List<PubPick> findPickByNumber(String number);
}
