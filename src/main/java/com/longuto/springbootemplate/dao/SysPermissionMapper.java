package com.longuto.springbootemplate.dao;

import com.longuto.springbootemplate.common.base.MyMapper;
import com.longuto.springbootemplate.pojo.po.SysPermission;

import java.util.List;

public interface SysPermissionMapper extends MyMapper<SysPermission> {
    List<SysPermission> findUserPermissions(String username);
}