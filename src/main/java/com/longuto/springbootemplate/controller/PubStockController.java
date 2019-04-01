package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.EnumValue;
import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.pojo.po.PubStock;
import com.longuto.springbootemplate.service.PubStockService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.constraints.NotEmpty;
import java.util.Date;
import java.util.List;

@Api(description = "stock相关Api")
@RestController
@Validated
@RequestMapping("/pubstock")
public class PubStockController extends BaseController {


    @Autowired
    PubStockService pubStockService;


    @ApiOperation("创建stock")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "number", value = "仓库编码", required = true, paramType = "form"),
            @ApiImplicitParam(name = "name", value = "仓库名称", required = true, paramType = "form"),
            @ApiImplicitParam(name = "type", value = "仓库类型：0是单仓，1是启用货位", required = true, paramType = "form"),
    })
    @Log("创建stock")
    @PostMapping("/create")
    public APIResponse createStock(@NotEmpty String number, @NotEmpty String name, @EnumValue(byteValues = {0, 1}, message = "{must_0_1}") Byte type) {

        List<PubStock> stocks = pubStockService.findStockByNumber(number);
        if(null != stocks && stocks.size() > 0) {
            return APIResponse.fail("存在相同number的stock");
        }
        PubStock temp = new PubStock(name, number, type, (byte) 1, new Date(), null, getCurrentUser().getName());
        int save = pubStockService.save(temp);
        if(save > 0) {
            return APIResponse.success(temp);
        } else {
            return APIResponse.fail("创建stock失败");
        }
    }


    @ApiOperation("stock集合")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "每页数量", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "页码", required = false, paramType = "query"),
    })
    @Log("stock集合")
    @GetMapping("/list")
    public APIResponse skuList(@ApiIgnore QueryRequest queryRequest) {
        return super.selectByPageNumSize(queryRequest, () -> pubStockService.selectAll());
    }
}
