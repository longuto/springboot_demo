package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.domain.PubSku;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PubSkuService extends IService<PubSku> {

    /**
     * 通过Number找Sku信息
     * @return
     */
    public List<PubSku> findSkuByNumber(String number);
}
