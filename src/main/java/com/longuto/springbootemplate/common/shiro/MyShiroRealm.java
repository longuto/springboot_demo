package com.longuto.springbootemplate.common.shiro;

import com.longuto.springbootemplate.pojo.po.SysPermission;
import com.longuto.springbootemplate.pojo.po.SysRole;
import com.longuto.springbootemplate.pojo.po.UserInfo;
import com.longuto.springbootemplate.service.SysPermissionService;
import com.longuto.springbootemplate.service.SysRoleService;
import com.longuto.springbootemplate.service.UserInfoService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 自定义实现 ShiroRealm，包含认证和授权两大模块
 *
 * @author MrBird
 */
@Component
public class MyShiroRealm extends AuthorizingRealm {

    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private SysRoleService sysRoleService;
    @Autowired
    private SysPermissionService sysPermissionService;

    /**
     * 授权模块，获取用户角色和权限
     *
     * @param principal principal
     * @return AuthorizationInfo 权限信息
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        UserInfo user = (UserInfo) SecurityUtils.getSubject().getPrincipal();
        String userName = user.getUsername();

        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();

        // 获取用户角色集
        List<SysRole> roleList = this.sysRoleService.findUserRole(userName);
        Set<String> roleSet = roleList.stream().map(SysRole::getRole).collect(Collectors.toSet());
        simpleAuthorizationInfo.setRoles(roleSet);

        // 获取用户权限集
        List<SysPermission> permissionList = this.sysPermissionService.findUserPermissions(userName);
        Set<String> permissionSet = permissionList.stream().map(SysPermission::getPermission).collect(Collectors.toSet());
        simpleAuthorizationInfo.setStringPermissions(permissionSet);
        return simpleAuthorizationInfo;
    }

    /**
     * 用户认证
     *
     * @param token AuthenticationToken 身份认证 token
     * @return AuthenticationInfo 身份认证信息
     * @throws AuthenticationException 认证相关异常
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        // 获取用户输入的用户名和密码
        String userName = (String) token.getPrincipal();
        String password = new String((char[]) token.getCredentials());

        // 通过用户名到数据库查询用户信息
        UserInfo user = this.userInfoService.findByName(userName);

        if (user == null)
            throw new UnknownAccountException("用户名或密码错误！");
//        if (!password.equals(user.getPassword()))
//            throw new IncorrectCredentialsException("用户名或密码错误！");
        if (UserInfo.STATUS_LOCK.byteValue() == user.getState().byteValue())
            throw new LockedAccountException("账号已被锁定,请联系管理员！");
        return new SimpleAuthenticationInfo(user, user.getPassword(), ByteSource.Util.bytes(user.getCredentialsSalt()), getName());
    }

    /**
     * 清除权限缓存
     * 使用方法：在需要清除用户权限的地方注入 ShiroRealm,
     * 然后调用其clearCache方法。
     */
    public void clearCache() {
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();
        super.clearCache(principals);
    }

}
