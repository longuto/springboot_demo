package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.dto.LoginUserDto;
import io.swagger.annotations.*;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.validation.constraints.NotEmpty;

@Api(description = "用户登录相关Api")
@Validated
@RestController
public class LoginController extends BaseController {

    @ApiOperation("用户登录")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", required = true, defaultValue = "admin", paramType = "form"),
            @ApiImplicitParam(name = "password", value = "密码", required = true, defaultValue = "123456", paramType = "form"),
    })
    @Log("用户登录")
    @PostMapping("/login")
    public APIResponse login(@NotEmpty String username, @NotEmpty String password) {
        // 登录失败从request中获取shiro处理的异常信息。
        // shiroLoginFailure:就是shiro异常类的全类名.
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            Subject subject = getSubject();
            if (subject != null)
                subject.logout();
            super.login(token);
            LoginUserDto dto = new LoginUserDto((String) getSession().getId(), getCurrentUser().getUid(),
                    getCurrentUser().getName(), getCurrentUser().getUsername(), getCurrentUser().getState());
            return APIResponse.success(dto);
        }  catch (IncorrectCredentialsException e) {
            return APIResponse.fail("用户名或密码错误");
        } catch (LockedAccountException e) {
            return APIResponse.fail("登录失败，该用户已被冻结");
        } catch (AuthenticationException e) {
            return APIResponse.fail("该用户不存在");
        } catch (Exception e) {
            return APIResponse.fail(e.getMessage());
        }
    }


    /**
     * 未登录，shiro应重定向到登录界面，此处返回未登录状态信息由前端控制跳转页面
     * @return
     */
    @ApiIgnore
    @GetMapping("/unauth")
    public APIResponse unauth() {
        return APIResponse.widthCode(APIResponse.CODE_USER_NO_LOGIN).setMsg("未登录");
    }


    @ApiOperation(value = "测试接口一" ,  notes="返回用户数据")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "token", value = "sessionid", paramType = "header")
    })
    @Log(value = "登录测试接口一")
    @GetMapping("/test")
    public APIResponse test() {
        return APIResponse.success(getCurrentUser());
    }


    @ApiOperation("测试接口二")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "token", value = "sessionid", paramType = "header")
    })
    @Log(value = "登录测试接口二")
    @RequiresPermissions("userInfo:del")//删除权限管理
    @GetMapping("/test2")
    public APIResponse test2() {
        return APIResponse.fail("测试用户体二");
    }
}
