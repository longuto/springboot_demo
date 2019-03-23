package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.dao.SysUserRoleMapper;
import com.longuto.springbootemplate.domain.SysUserRole;
import com.longuto.springbootemplate.dto.LoginUserDto;
import com.longuto.springbootemplate.service.SysUserRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserRoleServiceImpl extends BaseService<SysUserRole> implements SysUserRoleService {

    @Autowired
    SysUserRoleMapper sysUserRoleMapper;

    @Override
    public List<LoginUserDto> findUserByRole(Integer roleId) {
        return sysUserRoleMapper.findUserByRole(roleId);
    }
}
