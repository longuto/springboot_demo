package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.pojo.po.SysRole;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SysRoleService extends IService<SysRole> {

    List<SysRole> findUserRole(String username);
}
