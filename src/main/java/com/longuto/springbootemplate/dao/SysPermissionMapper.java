package com.longuto.springbootemplate.dao;

import com.longuto.springbootemplate.common.config.MyMapper;
import com.longuto.springbootemplate.domain.SysPermission;

import java.util.List;

public interface SysPermissionMapper extends MyMapper<SysPermission> {
    List<SysPermission> findUserPermissions(String username);
}