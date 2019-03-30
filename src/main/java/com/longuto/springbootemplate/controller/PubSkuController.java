package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.domain.PubSku;
import com.longuto.springbootemplate.service.PubSkuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import java.util.List;

@Api(description = "sku相关Api")
@RestController
@RequestMapping("/pubsku")
public class PubSkuController extends BaseController {

    @Autowired
    PubSkuService pubSkuService;    // sku的service


    @ApiOperation("创建sku")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "number", value = "sku的编码", required = true, paramType = "form"),
            @ApiImplicitParam(name = "name", value = "sku的名称", required = true, paramType = "form"),
            @ApiImplicitParam(name = "status", value = "sku的状态，0是禁用、1是启用", required = true, paramType = "form"),
            @ApiImplicitParam(name = "type", value = "sku的类型，0是未启用批次、1是启用批次", required = true, paramType = "form"),
            @ApiImplicitParam(name = "note", value = "sku的备注", required = false, paramType = "form"),
    })
    @Log("创建sku")
    @PostMapping("/create")
    public APIResponse createSku(@Validated @ApiIgnore PubSku pubSku) {
        List<PubSku> skus = pubSkuService.findSkuByNumber(pubSku.getNumber());
        if(null != skus && skus.size() > 0) {
            return APIResponse.fail("已有相同number的sku存在");
        }
        int save = pubSkuService.save(pubSku);
        if(save > 0) {
            return APIResponse.success(pubSku);
        } else {
            return APIResponse.fail("创建sku失败");
        }
    }


    @ApiOperation("sku集合")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "每页数量", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "页码", required = false, paramType = "query"),
    })
    @Log("sku集合")
    @GetMapping("/list")
    public APIResponse skuList(@ApiIgnore QueryRequest queryRequest) {
        return APIResponse.success(super.selectByPageNumSize(queryRequest, () -> pubSkuService.selectAll()));
    }
}

