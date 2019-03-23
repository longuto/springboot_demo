package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.domain.UserInfo;
import com.longuto.springbootemplate.service.UserInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

/**
 * 用户控制器
 */
@Api(description = "用户的操作")
@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    UserInfoService userInfoService;


    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", required = true, paramType = "form"),
            @ApiImplicitParam(name = "password", value = "密码", required = true, paramType = "form"),
            @ApiImplicitParam(name = "roleId", value = "角色id", required = true, paramType = "form"),
            @ApiImplicitParam(name = "name", value = "姓名", required = false, paramType = "form"),
    })
    @Log("注册用户")
    @PostMapping("/addUser")
    public APIResponse addUser(@ApiIgnore UserInfo userInfo, int roleId) {
        try {
            UserInfo user = userInfoService.findByName(userInfo.getUsername());
            if(null != user) {
                return APIResponse.fail("用户名已经被注册！");
            }
            UserInfo userTemp = userInfoService.addUserInfo(userInfo, roleId);
            return APIResponse.success();
        } catch (Exception e) {
            return APIResponse.fail("注册用户失败，请联系管理员");
        }
    }

}
