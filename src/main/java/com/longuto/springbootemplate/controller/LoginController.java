package com.longuto.springbootemplate.controller;

import com.longuto.springbootemplate.common.base.controller.BaseController;
import com.longuto.springbootemplate.common.domain.ResponseBo;
import io.swagger.annotations.*;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import static com.longuto.springbootemplate.common.shiro.filter.CustomDefaultWebSessionManager.TOKEN;

@Api(description = "用户登录相关Api")
@RestController
public class LoginController extends BaseController {

    @ApiOperation("用户登录")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "username", value = "用户名", required = true, defaultValue = "admin", paramType = "form"),
            @ApiImplicitParam(name = "password", value = "密码", required = true, defaultValue = "123456", paramType = "form"),
    })
    @PostMapping("/login")
    public ResponseBo login(
                @RequestParam(value = "username", required = true) String username,
                @RequestParam(value = "password", required = true) String password) {
        // 登录失败从request中获取shiro处理的异常信息。
        // shiroLoginFailure:就是shiro异常类的全类名.
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        try {
            Subject subject = getSubject();
            if (subject != null)
                subject.logout();
            super.login(token);
            return ResponseBo.ok().put(TOKEN, getSession().getId());
        }  catch (IncorrectCredentialsException e) {
            return ResponseBo.error("用户名或密码错误");
        } catch (LockedAccountException e) {
            return ResponseBo.error("登录失败，该用户已被冻结");
        } catch (AuthenticationException e) {
            return ResponseBo.error("该用户不存在");
        } catch (Exception e) {
            return ResponseBo.error(e.getMessage());
        }
    }


    /**
     * 未登录，shiro应重定向到登录界面，此处返回未登录状态信息由前端控制跳转页面
     * @return
     */
    @ApiOperation("未授权接口")
    @GetMapping("/unauth")
    public ResponseBo unauth() {
        return ResponseBo.warn("未登录");
    }


    @ApiOperation(value = "测试接口一" ,  notes="返回用户数据")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "token", value = "sessionid", paramType = "header")
    })
    @GetMapping("/test")
    public ResponseBo test() {
        return ResponseBo.ok().put("user", getCurrentUser());

    }


    @ApiOperation("测试接口二")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "token", value = "sessionid", paramType = "header")
    })
    @RequiresPermissions("userInfo:del")//删除权限管理
    @GetMapping("/test2")
    public ResponseBo test2() {
        return ResponseBo.ok("测试用户体二");
    }
}
