package com.longuto.springbootemplate.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.longuto.springbootemplate.common.base.service.IService;
import com.longuto.springbootemplate.domain.OperLog;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.stereotype.Service;

@Service
public interface OperLogService extends IService<OperLog> {

    // 保存日志
    void saveLog(OperLog operLog, ProceedingJoinPoint joinPoint) throws JsonProcessingException;
}
