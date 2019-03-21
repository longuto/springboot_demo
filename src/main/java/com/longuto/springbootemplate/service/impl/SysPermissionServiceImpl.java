package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.dao.SysPermissionMapper;
import com.longuto.springbootemplate.domain.SysPermission;
import com.longuto.springbootemplate.service.SysPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class SysPermissionServiceImpl extends BaseService<SysPermission> implements SysPermissionService {

    @Autowired
    SysPermissionMapper sysPermissionMapper;

    @Override
    public List<SysPermission> findUserPermissions(String username) {
        return this.sysPermissionMapper.findUserPermissions(username);
    }
}
