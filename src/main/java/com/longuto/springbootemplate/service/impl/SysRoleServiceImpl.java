package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.dao.SysRoleMapper;
import com.longuto.springbootemplate.pojo.po.SysRole;
import com.longuto.springbootemplate.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysRoleServiceImpl extends BaseService<SysRole> implements SysRoleService {

    @Autowired
    SysRoleMapper sysRoleMapper;

    @Override
    public List<SysRole> findUserRole(String username) {
        return this.sysRoleMapper.findUserRole(username);
    }
}
