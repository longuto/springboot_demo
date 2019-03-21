package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.service.impl.BaseService;
import com.longuto.springbootemplate.dao.SysRoleMapper;
import com.longuto.springbootemplate.domain.SysRole;
import com.longuto.springbootemplate.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class SysRoleServiceImpl extends BaseService<SysRole> implements SysRoleService {

    @Autowired
    SysRoleMapper sysRoleMapper;

    @Override
    public List<SysRole> findUserRole(String username) {
        return this.sysRoleMapper.findUserRole(username);
    }
}
