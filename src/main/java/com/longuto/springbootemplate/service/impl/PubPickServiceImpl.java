package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.pojo.po.PubPick;
import com.longuto.springbootemplate.service.PubPickService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

@Service
public class PubPickServiceImpl extends BaseService<PubPick> implements PubPickService {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Override
    public List<PubPick> findPickByNumber(String number) {
        try {
            Example example = new Example(PubPick.class);
            Example.Criteria criteria = example.createCriteria();
            if(StringUtils.isNotBlank(number)) {
                criteria.andCondition("lower(number)=", number.toLowerCase());
            }
            return this.selectByExample(example);
        } catch (Exception e) {
            log.info("通过number查找pick失败：" + e.getMessage());
            return new ArrayList<>();
        }
    }
}
