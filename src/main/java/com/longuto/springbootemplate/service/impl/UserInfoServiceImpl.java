package com.longuto.springbootemplate.service.impl;

import com.longuto.springbootemplate.common.service.impl.BaseService;
import com.longuto.springbootemplate.domain.UserInfo;
import com.longuto.springbootemplate.service.UserInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class UserInfoServiceImpl extends BaseService<UserInfo> implements UserInfoService {

    @Override
    public UserInfo findByName(String username) {
        Example example = new Example(UserInfo.class);
        example.createCriteria().andCondition("lower(username)=", username.toLowerCase());
        List<UserInfo> list = this.selectByExample(example);
        return list.isEmpty() ? null : list.get(0);
    }
}
