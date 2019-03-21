package com.longuto.springbootemplate.dao;

import com.longuto.springbootemplate.common.base.MyMapper;
import com.longuto.springbootemplate.domain.SysRole;

import java.util.List;

public interface SysRoleMapper extends MyMapper<SysRole> {
    List<SysRole> findUserRole(String username);
}