package com.longuto.springbootemplate.common.aspect;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.longuto.springbootemplate.common.config.TemplateProperties;
import com.longuto.springbootemplate.common.utils.HttpContextUtils;
import com.longuto.springbootemplate.common.utils.IPUtils;
import com.longuto.springbootemplate.domain.UserInfo;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * AOP 记录用户操作日志
 *
 * @author MrBird
 * @link https://mrbird.cc/Spring-Boot-AOP%20log.html
 */
@Aspect
@Component
public class LogAspect {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TemplateProperties templateProperties;


    @Pointcut("@annotation(com.longuto.springbootemplate.common.annotation.Log)")
    public void pointcut() {
        // do nothing
    }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point) throws JsonProcessingException {
        Object result = null;
        long beginTime = System.currentTimeMillis();
        try {
            // 执行方法
            result = point.proceed();
        } catch (Throwable e) {
            log.error(e.getMessage());
        }
        // 获取request
        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
        // 设置IP地址
        String ip = IPUtils.getIpAddr(request);
        // 执行时长(毫秒)
        long time = System.currentTimeMillis() - beginTime;
        if (templateProperties.isOpenAopLog()) {
            UserInfo user = (UserInfo) SecurityUtils.getSubject().getPrincipal();
            // 保存日志
            // TODO: 2019/3/21 保存日志 point获取方法信息，UserInfo获取用户信息
        }
        return result;
    }
}
