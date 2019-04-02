package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.common.domain.APIResponse;
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

    private static int PDA_DOWN_NOTHISBATCH = 0x1; // 无此批次号
    private static int PDA_DOWN_DATAERROR = 0x2;    // 货位上sku信息异常
    private static int PDA_DOWN_OUTQTY_NOBATCH = 0x3;    // 货位上当前物料数量不足
    private static int PDA_DOWN_OUTQTY_BATCH = 0x4;    // 货位上当前物料的批次号数量不足

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

    @Override
    public APIResponse downShelf(PubPick pubPick, PdaInShelf pdaInShelf) {
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
        if(null == pdaInShelf || pdaInShelves.size() <= 0) {
            if(!StringUtils.isEmpty(pdaInShelf.getSkubatch())) {    // 提示批次号不存在
                return APIResponse.widthCode(PDA_DOWN_NOTHISBATCH).setMsg("无此批次号");
            }
            // 未知错误 - 按理说应该要清除货位上的skuid
            return APIResponse.widthCode(PDA_DOWN_DATAERROR).setMsg("货位上sku信息异常");
        }
        Integer shelfQty = pdaInShelves.get(0).getQty();    // 在位数量
        if(null != shelfQty) {
            if(shelfQty > pdaInShelf.getQty()) {    // 下架
                // 更新在位表和货位表
                pdaInShelf.setQty(shelfQty - pdaInShelf.getQty());
                int pda = this.updateNotNull(pdaInShelf);
                pubPick.setUsedqty(pdaInShelf.getQty());
                int pick = pubPickService.updateNotNull(pubPick);
                if(pda > 0 && pick > 0) {
                    return APIResponse.success(new PdaInPickVo(pubPick, pdaInShelf));
                }
                return null;
            } else if(shelfQty < pdaInShelf.getQty()) {    // 提示数量不足
                if(!StringUtils.isEmpty(pdaInShelf.getSkubatch())) {
                    return APIResponse.widthCode(PDA_DOWN_OUTQTY_BATCH).setMsg("货位上当前物料的批次号数量不足");
                } else {
                    return APIResponse.widthCode(PDA_DOWN_OUTQTY_NOBATCH).setMsg("货位上当前物料数量不足");
                }
            }
        }
        int pda = this.delete(pdaInShelf);
        if(pubPick.getUsedqty() <= pdaInShelf.getQty()) {
            pubPick.setUsedqty(0);
            pubPick.setSkuid(null);
        } else {
            pubPick.setUsedqty(pubPick.getUsedqty() - pdaInShelf.getQty());
        }
        int pick = pubPickService.updateNotNull(pubPick);
        if(pda > 0 && pick > 0) {
            pdaInShelf.setQty(0);
            return APIResponse.success(new PdaInPickVo(pubPick, pdaInShelf));
        }
        // 删除
        return null;
    }
}
