package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Api(description = "stock相关Api")
@RestController
@RequestMapping("/pubstock")
public class PubStockController extends BaseController {

    @PostMapping
    public APIResponse createStock() {

        return APIResponse.success();
    }

}
