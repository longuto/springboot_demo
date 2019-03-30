package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.domain.PubSku;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

@Service
public class PubSkuServiceImpl extends BaseService<PubSku> implements PubSkuService {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<PubSku> findSkuByNumber(String number) {
        try {
            Example example = new Example(PubSku.class);
            Example.Criteria criteria = example.createCriteria();
            if(StringUtils.isNotBlank(number)) {
                criteria.andCondition("lower(number)=", number.toLowerCase());
            }
            return this.selectByExample(example);
        } catch (Exception e) {
            log.info("通过number查找sku失败：" + e.getMessage());
            return new ArrayList<>();
        }
    }
}
