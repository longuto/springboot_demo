package com.longuto.springbootemplate.common.handler;

import com.longuto.springbootemplate.common.domain.ResponseBo;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.session.ExpiredSessionException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

@RestControllerAdvice
@Order(value = Ordered.HIGHEST_PRECEDENCE)
public class GlobalExceptionHandler {

	@ExceptionHandler(value = AuthorizationException.class)
	public Object handleAuthorizationException(HttpServletRequest request) {
		return ResponseBo.error("暂无权限，请联系管理员！");
	}

	@ExceptionHandler(value = ExpiredSessionException.class)
	public Object handleExpiredSessionException(HttpServletRequest request) {
		return ResponseBo.error("会话已过期，请重新登录！");
	}
}
