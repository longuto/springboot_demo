package com.longuto.springbootemplate.common.handler;

import com.longuto.springbootemplate.common.domain.APIResponse;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

import static com.longuto.springbootemplate.common.domain.APIResponse.CODE_USER_NO_PERMISS;

@RestControllerAdvice
@Order(value = Ordered.HIGHEST_PRECEDENCE)
public class GlobalExceptionHandler {

	@ExceptionHandler(value = AuthorizationException.class)
	public Object handleAuthorizationException(HttpServletRequest request) {
		return APIResponse.widthCode(CODE_USER_NO_PERMISS).setMsg("暂无权限，请联系管理员！");
	}
}
