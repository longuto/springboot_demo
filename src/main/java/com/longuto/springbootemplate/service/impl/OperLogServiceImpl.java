package com.longuto.springbootemplate.service.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.longuto.springbootemplate.common.annotation.Log;
import com.longuto.springbootemplate.common.base.service.impl.BaseService;
import com.longuto.springbootemplate.common.utils.AddressUtils;
import com.longuto.springbootemplate.pojo.po.OperLog;
import com.longuto.springbootemplate.service.OperLogService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.*;

@Service
public class OperLogServiceImpl extends BaseService<OperLog> implements OperLogService {

    private static Logger log = LoggerFactory.getLogger(OperLogServiceImpl.class);

    @Autowired
    ObjectMapper objectMapper;

    @Async
    @Override
    public void saveLog(OperLog operLog, ProceedingJoinPoint joinPoint) throws JsonProcessingException {
        log.info("切换后的线程名称为:" + Thread.currentThread().getName());
        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
        Method method = methodSignature.getMethod();
        Log annotation = method.getAnnotation(Log.class);
        if(null != annotation) {
            operLog.setValue(annotation.value());   // 注解的值
        }
        operLog.setClassname(joinPoint.getTarget().getClass().getName());   // 类名
        operLog.setMethodname(method.getName());    // 方法名
        // 请求的方法参数值
        Object[] args = joinPoint.getArgs();
        // 请求的方法参数名称
        LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
        String[] paramNames = u.getParameterNames(method);
        if (args != null && paramNames != null) {
            StringBuilder params = new StringBuilder();
            params = handleParams(params, args, Arrays.asList(paramNames));
            operLog.setParams(params.toString());
        }
        operLog.setCreatetime(new Date());
        operLog.setLocation(AddressUtils.getCityInfo(operLog.getIp()));
        // 保存系统日志
        save(operLog);
    }

    @SuppressWarnings("unchecked")
    private StringBuilder handleParams(StringBuilder params, Object[] args, List paramNames) throws JsonProcessingException {
        for (int i = 0; i < args.length; i++) {
            if (args[i] instanceof Map) {
                Set set = ((Map) args[i]).keySet();
                List list = new ArrayList();
                List paramList = new ArrayList<>();
                for (Object key : set) {
                    list.add(((Map) args[i]).get(key));
                    paramList.add(key);
                }
                return handleParams(params, list.toArray(), paramList);
            } else {
                if (args[i] instanceof Serializable) {
                    Class<?> aClass = args[i].getClass();
                    try {
                        aClass.getDeclaredMethod("toString", new Class[]{null});
                        // 如果不抛出NoSuchMethodException 异常则存在 toString 方法 ，安全的writeValueAsString ，否则 走 Object的 toString方法
                        params.append("  ").append(paramNames.get(i)).append(": ").append(objectMapper.writeValueAsString(args[i]));
                    } catch (NoSuchMethodException e) {
                        params.append("  ").append(paramNames.get(i)).append(": ").append(objectMapper.writeValueAsString(args[i].toString()));
                    }
                } else if (args[i] instanceof MultipartFile) {
                    MultipartFile file = (MultipartFile) args[i];
                    params.append("  ").append(paramNames.get(i)).append(": ").append(file.getName());
                } else {
                    params.append("  ").append(paramNames.get(i)).append(": ").append(args[i]);
                }
            }
        }
        return params;
    }
}
