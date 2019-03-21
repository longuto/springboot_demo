package com.longuto.springbootemplate.service;

import com.longuto.springbootemplate.common.service.IService;
import com.longuto.springbootemplate.domain.UserInfo;
import org.springframework.stereotype.Service;

@Service
public interface UserInfoService extends IService<UserInfo> {

    UserInfo findByName(String userName);
}
