package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.domain.UserInfo;
import org.springframework.stereotype.Service;

@Service
public interface UserInfoService extends IService<UserInfo> {

    // 根据用户名查找用户
    UserInfo findByName(String userName);

    // 新增用户和角色信息
    UserInfo addUserInfo(UserInfo userInfo, int roleId);
}
