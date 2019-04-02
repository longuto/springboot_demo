package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.Constant;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.pojo.po.PdaInShelf;
import com.longuto.springbootemplate.pojo.po.PubPick;
import com.longuto.springbootemplate.pojo.po.PubSku;
import com.longuto.springbootemplate.pojo.vo.PdaInPickVo;
import com.longuto.springbootemplate.service.PdaInShelfService;
import com.longuto.springbootemplate.service.PubPickService;
import com.longuto.springbootemplate.service.PubSkuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import java.util.Date;
import java.util.List;

@Api("pda货位操作Api")
@Validated
@RestController
@RequestMapping("/pdainshelf")
public class PdaInShelfController extends BaseController {

    @Autowired
    PdaInShelfService pdaInShelfService;
    @Autowired
    PubPickService pubPickService;
    @Autowired
    PubSkuService pubSkuService;

    @ApiOperation("商品上架")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pickid", value = "仓位id：大于等于1", required = true, paramType = "form"),
            @ApiImplicitParam(name = "skuNumber", value = "sku编码", required = true, paramType = "form"),
            @ApiImplicitParam(name = "batch", value = "批次号", required = false, paramType = "form"),
            @ApiImplicitParam(name = "qty", value = "上架数量:大于等于1", required = true, paramType = "form"),
    })
    @Log("商品上架")
    @PostMapping("/upperShelf")
    public APIResponse upperShelf(@Min(1) Integer pickid, @NotEmpty String skuNumber, String batch, @Min(1) Integer qty) {
        // 1、验证仓位是否存在
        PubPick pubPick = pubPickService.selectByKey(pickid);
        if(null == pubPick) {
            return APIResponse.fail("仓位id不存在");
        }
        // 2、验证skuNumber是否存在
        List<PubSku> skus = pubSkuService.findSkuByNumber(skuNumber);
        if(null == skus || skus.size() <= 0) {
            return APIResponse.fail("skuNumber不存在");
        }
        PubSku pubSku = skus.get(0);
        // 3、判断仓位是否存在skuid：1、不存在->判断是否需要输入批次号 -> 增加仓位数量 -> 增加在位表数据
        //                        2、存在 -> 判断skunumber是否和仓位skuid一致(不一致提示出错) -> 判断是否需要输入批次号 -> 增加仓位数量 -> 增加在位表数据
        if(null != pubPick.getSkuid()) {
            if(pubSku.getSid().intValue() != pubPick.getSkuid().intValue()) {
                return APIResponse.fail("请货位已被其他物料占用");
            }
        }
        if(pubSku.getType() == Constant.SKU_BATCH.SKU_OPEN_BATCH && StringUtils.isEmpty(batch)) {
            return APIResponse.fail("该物料启用了批次号管理，请输入批次号");
        }
        // 做一个事物 更新仓位数据+在位表数据
        if(null == pubPick.getSkuid()) {
            pubPick.setSkuid(pubSku.getSid());
        }
        pubPick.setUsedqty(null == pubPick.getUsedqty() ? 0 : pubPick.getUsedqty() + qty);  // 货位表数据
        PdaInShelf pdaInShelf = new PdaInShelf(pubPick.getPid(), pubPick.getSkuid(), pubSku.getType() == Constant.SKU_BATCH.SKU_OPEN_BATCH ? batch : "",
                qty, null != getCurrentUser() ? getCurrentUser().getName() : null, new Date());   // 库位表数据
        PdaInPickVo pdaInPickVo = pdaInShelfService.upperShelf(pubPick, pdaInShelf);
        if(null == pdaInPickVo) {
            return APIResponse.fail("上架失败");
        }
        return APIResponse.success(pdaInPickVo);
    }


    @ApiOperation("pda在位表集合")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "每页数量", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "页码", required = false, paramType = "query"),
    })
    @Log("pda在位表集合")
    @GetMapping("/list")
    public APIResponse pdaInshelfList(@ApiIgnore QueryRequest queryRequest) {
        return super.selectByPageNumSize(queryRequest, () -> pdaInShelfService.selectAll());
    }
}

