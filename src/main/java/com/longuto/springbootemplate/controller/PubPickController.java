package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.EnumValue;
import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.pojo.po.PubPick;
import com.longuto.springbootemplate.pojo.po.PubStock;
import com.longuto.springbootemplate.service.PubPickService;
import com.longuto.springbootemplate.service.PubStockService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.hibernate.validator.constraints.Length;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.constraints.Min;
import java.util.List;

@Api(description = "pick相关Api")
@Validated
@RestController
@RequestMapping("/pick")
public class PubPickController extends BaseController {

    @Autowired
    PubPickService pubPickService;
    @Autowired
    PubStockService pubStockService;


    @ApiOperation("创建货位")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "number", value = "仓位编码：最小4位，最大10位", required = true, paramType = "form"),
            @ApiImplicitParam(name = "stockId", value = "仓库id：大于等于1", required = true, paramType = "form"),
            @ApiImplicitParam(name = "totalqty", value = "仓位总容量", required = false, paramType = "form"),
    })
    @Log("创建货位")
    @PostMapping("/create")
    public APIResponse createPick(@Length(min = 4, max = 10) String number, @Min(1) Integer stockId, Integer totalqty) {
        List<PubPick> picks = pubPickService.findPickByNumber(number);
        // 判断是否存在此number
        if(null != picks && picks.size() > 0) {
            return APIResponse.fail("已存在相同number的仓位");
        }
        // 判断仓库id是否存在
        PubStock pubStock = pubStockService.selectByKey(stockId);
        if(null ==pubStock) {
            return APIResponse.fail("关联的仓库id不存在");
        }
        PubPick pubPick = new PubPick(number, (byte) 1, null, stockId, null == totalqty ? 0 : totalqty, 0);
        int save = pubPickService.save(pubPick);
        if(save > 0) {
            return APIResponse.success(pubPick);
        }
        return APIResponse.fail("创建仓位失败");
    }


    @ApiOperation("pick集合")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pageNum", value = "每页数量", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "页码", required = false, paramType = "query"),
    })
    @Log("pick集合")
    @GetMapping("/list")
    public APIResponse pickList(@ApiIgnore QueryRequest queryRequest) {
        return super.selectByPageNumSize(queryRequest, () -> pubPickService.selectAll());
    }


    @ApiOperation("根据仓位id删除仓位")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pid", value = "仓位id", required = true, paramType = "path"),
    })
    @Log("根据仓位id删除仓位")
    @DeleteMapping("/{pid}/delete")
    public APIResponse deleteByPickId(@PathVariable("pid") @Min(1) Integer id) {
        int delete = pubPickService.delete(id);
        if(delete <= 0) {
            return APIResponse.fail("删除失败，请确认仓位是否存在");
        }
        return APIResponse.success(id);
    }


    @ApiOperation("禁用启用仓位的状态")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pid", value = "仓位pid", required = true, paramType = "form"),
            @ApiImplicitParam(name = "status", value = "页码", required = true, paramType = "form"),
    })
    @Log("禁用启用仓位的状态")
    @PutMapping("/changeStatus")
    public APIResponse changePickStatu(@Min(1) Integer pid, @EnumValue(byteValues = {0, 1}, message = "{must_0_1}") Byte status) {
        PubPick pubPick = pubPickService.selectByKey(pid);
        if(null == pubPick) {
            return APIResponse.fail("仓位id不存在");
        }
        if(0 == status.byteValue()) {   // 禁用
            if(pubPick.getStatus().byteValue() == 0) {
                return APIResponse.fail("仓位状态已禁用");
            } else {
                pubPick.setStatus((byte) 0);
            }
        } else if(1 == status.byteValue()) {    // 启用
            if(pubPick.getStatus().byteValue() == 1) {
                return APIResponse.fail("仓位状态已启用");
            } else {
                pubPick.setStatus((byte) 1);
            }
        }
        int row = pubPickService.updateNotNull(pubPick);
        if(row > 0) {
            return APIResponse.success(pubPick);
        }
        return APIResponse.fail("状态更新失败");
    }
}
