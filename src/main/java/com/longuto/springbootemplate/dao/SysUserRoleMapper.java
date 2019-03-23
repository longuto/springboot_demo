package com.longuto.springbootemplate.dao;

import com.longuto.springbootemplate.common.base.MyMapper;
import com.longuto.springbootemplate.domain.SysUserRole;
import com.longuto.springbootemplate.dto.LoginUserDto;

import java.util.List;

public interface SysUserRoleMapper extends MyMapper<SysUserRole> {

    List<LoginUserDto> findUserByRole(Integer roleId);
}