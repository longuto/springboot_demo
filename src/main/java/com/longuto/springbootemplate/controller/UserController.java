package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.common.utils.ExcelUtils;
import com.longuto.springbootemplate.common.utils.FileUtil;
import com.longuto.springbootemplate.pojo.po.UserInfo;
import com.longuto.springbootemplate.pojo.dto.LoginUserDto;
import com.longuto.springbootemplate.service.SysUserRoleService;
import com.longuto.springbootemplate.service.UserInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 用户控制器
 */
@Api(description = "用户的操作")
@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    private static Logger log = LoggerFactory.getLogger(UserController.class);

    @Autowired
    UserInfoService userInfoService;

    @Autowired
    SysUserRoleService sysUserRoleService;

    @ApiOperation("用户注册")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", required = true, paramType = "form"),
            @ApiImplicitParam(name = "password", value = "密码", required = true, paramType = "form"),
            @ApiImplicitParam(name = "roleId", value = "角色id", required = true, paramType = "form"),
            @ApiImplicitParam(name = "name", value = "姓名", required = false, paramType = "form"),
    })
    @Log("注册用户")
    @PostMapping("/addUser")
    public APIResponse addUser(@ApiIgnore @Validated UserInfo userInfo, @NotNull int roleId) {
        try {
            UserInfo user = userInfoService.findByName(userInfo.getUsername());
            if(null != user) {
                return APIResponse.fail("用户名已经被注册！");
            }
            UserInfo userTemp = userInfoService.addUserInfo(userInfo, roleId);
            return APIResponse.success("注册成功");
        } catch (Exception e) {
            return APIResponse.fail("注册用户失败，请联系管理员");
        }
    }


    @ApiOperation("用户查询")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "roleId", value = "角色id", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageNum", value = "每页数量", required = false, paramType = "query"),
            @ApiImplicitParam(name = "pageSize", value = "页码", required = false, paramType = "query"),
    })
    @Log("查询用户list")
    @GetMapping("/list")
    public APIResponse userList(@ApiIgnore QueryRequest request, Integer roleId) {
        return super.selectByPageNumSize(request, () -> sysUserRoleService.findUserByRole(roleId));
    }


    @ApiOperation("导出用户list至本地")
    @Log("导出用户list至本地")
    @GetMapping("/exportUsers2Service")
    public APIResponse exportUsers2Service() {
        // 查询所有用户集合
        List<LoginUserDto> users = sysUserRoleService.findUserByRole(null);
        return FileUtil.createExcelByPOIKit("userinfo", users, LoginUserDto.class);
    }


    @ApiOperation("导出用户list至浏览器")
    @Log("导出用户list至浏览器")
    @GetMapping("/exportUsers2Explore")
    public void exportUsers2Explore(HttpServletResponse response) {
        // 查询所有用户集合
        List<LoginUserDto> users = sysUserRoleService.findUserByRole(null);
        ExcelUtils.export(LoginUserDto.class, response).toExcel(users, "userinfo");
    }

}
