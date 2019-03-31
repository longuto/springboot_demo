package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.common.utils.MD5Utils;
import com.longuto.springbootemplate.pojo.po.SysUserRole;
import com.longuto.springbootemplate.pojo.po.UserInfo;
import com.longuto.springbootemplate.service.SysUserRoleService;
import com.longuto.springbootemplate.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class UserInfoServiceImpl extends BaseService<UserInfo> implements UserInfoService {

    @Autowired
    SysUserRoleService sysUserRoleService;

    @Override
    public UserInfo findByName(String username) {
        Example example = new Example(UserInfo.class);
        example.createCriteria().andCondition("lower(username)=", username.toLowerCase());
        List<UserInfo> list = this.selectByExample(example);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public UserInfo addUserInfo(UserInfo userInfo, int roleId) {
        // 保存用户信息
        userInfo.setPassword(MD5Utils.encrypt(userInfo.getUsername(), userInfo.getPassword())); // 将密码加密
        userInfo.setState((byte) 1);
        save(userInfo);

        // 保存当前用户的角色信息
        SysUserRole sysUserRole = new SysUserRole();
        sysUserRole.setUid(userInfo.getUid());
        sysUserRole.setRoleId(roleId);
        sysUserRoleService.save(sysUserRole);
        return userInfo;
    }
}
