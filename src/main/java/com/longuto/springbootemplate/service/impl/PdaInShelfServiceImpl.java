package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.pojo.po.PdaInShelf;
import com.longuto.springbootemplate.pojo.po.PubPick;
import com.longuto.springbootemplate.pojo.po.PubSku;
import com.longuto.springbootemplate.pojo.vo.PdaInPickVo;
import com.longuto.springbootemplate.service.PdaInShelfService;
import com.longuto.springbootemplate.service.PubPickService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class PdaInShelfServiceImpl extends BaseService<PdaInShelf> implements PdaInShelfService {

    @Autowired
    PubPickService pubPickService;

    /**
     * 默认继承Tran
     * @param pubPick
     * @param pdaInShelf
     * @return
     */
    @Override
    public PdaInPickVo upperShelf(PubPick pubPick, PdaInShelf pdaInShelf) {
        int pick = pubPickService.updateNotNull(pubPick);

        Example example = new Example(PdaInShelf.class);
        Example.Criteria criteria = example.createCriteria();
        if(null != pdaInShelf.getPickid()) {
            criteria.andCondition("pickid=", pdaInShelf.getPickid());
        }
        if(null != pdaInShelf.getSkuid()) {
            criteria.andCondition("skuid=", pdaInShelf.getSkuid());
        }
        if(StringUtils.isNotBlank(pdaInShelf.getSkubatch())) {
            criteria.andCondition("lower(skubatch)=", pdaInShelf.getSkubatch().toLowerCase());
        }
        List<PdaInShelf> pdaInShelves = this.selectByExample(example);
        int pda;
        if(null == pdaInShelf || pdaInShelves.size() <= 0) {
            pda = save(pdaInShelf);
        } else {
            pdaInShelf.setQty(pdaInShelves.get(0).getQty() + pdaInShelf.getQty());
            pda = this.updateNotNull(pdaInShelf);
        }

        if(pick > 0 && pda > 0) {
            PdaInPickVo pdaInPickVo = new PdaInPickVo();
            pdaInPickVo.setPubPick(pubPick);
            pdaInPickVo.setPdaInShelf(pdaInShelf);
            return pdaInPickVo;
        }
        return null;
    }
}
