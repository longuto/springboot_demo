package com.longuto.springbootemplate.common.base.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.domain.PageData;
import com.longuto.springbootemplate.common.domain.QueryRequest;
import com.longuto.springbootemplate.pojo.po.UserInfo;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import java.util.List;
import java.util.function.Supplier;

public class BaseController {

    protected static Subject getSubject() {
        return SecurityUtils.getSubject();
    }

    protected UserInfo getCurrentUser() {
        return (UserInfo) getSubject().getPrincipal();
    }

    protected Session getSession() {
        return getSubject().getSession();
    }

    protected Session getSession(Boolean flag) {
        return getSubject().getSession(flag);
    }

    protected void login(AuthenticationToken token) {
        getSubject().login(token);
    }

    private APIResponse getDataTable(PageInfo<?> pageInfo) {
        PageData pageData = new PageData();
        pageData.setTotal(pageInfo.getTotal());
        pageData.setRows(pageInfo.getList());
        return APIResponse.success(pageData);
    }

    protected APIResponse selectByPageNumSize(QueryRequest request, Supplier<?> s) {
        PageHelper.startPage(request.getPageNum(), request.getPageSize());
        PageInfo<?> pageInfo = new PageInfo<>((List<?>) s.get());
        PageHelper.clearPage();
        return getDataTable(pageInfo);
    }
}
