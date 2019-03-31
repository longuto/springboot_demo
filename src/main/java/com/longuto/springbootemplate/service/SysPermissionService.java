package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.pojo.po.SysPermission;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SysPermissionService extends IService<SysPermission> {

    List<SysPermission> findUserPermissions(String username);
}
