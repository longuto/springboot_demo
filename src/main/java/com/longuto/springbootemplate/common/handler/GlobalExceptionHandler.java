package com.longuto.springbootemplate.common.handler;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.longuto.springbootemplate.common.domain.APIResponse;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import javax.validation.Path;

import java.util.List;
import java.util.Set;

import static com.longuto.springbootemplate.common.domain.APIResponse.CODE_USER_NO_PERMISS;

@RestControllerAdvice
@Order(value = Ordered.HIGHEST_PRECEDENCE)
public class GlobalExceptionHandler {

	@ExceptionHandler(value = AuthorizationException.class)
	public APIResponse handleAuthorizationException(HttpServletRequest request) {
		return APIResponse.widthCode(CODE_USER_NO_PERMISS).setMsg("暂无权限，请联系管理员！");
	}


	/**
	 * 统一处理请求参数校验(普通传参)
	 *
	 * @param e ConstraintViolationException
	 * @return FebsResponse
	 */
	@ExceptionHandler(ConstraintViolationException.class)
	public APIResponse handleConstraintViolationException(ConstraintViolationException e) {
		StringBuilder message = new StringBuilder();
		Set<ConstraintViolation<?>> violations = e.getConstraintViolations();
		for (ConstraintViolation<?> violation : violations) {
			Path path = violation.getPropertyPath();
			String[] pathArr = StringUtils.splitByWholeSeparatorPreserveAllTokens(path.toString(), ".");
			message.append(pathArr[1]).append(violation.getMessage()).append(",");
		}
		message = new StringBuilder(message.substring(0, message.length() - 1));
		return APIResponse.fail(message.toString());
	}


	/**
	 * 统一处理请求参数校验(实体对象传参)
	 *
	 * @param e BindException
	 * @return FebsResponse
	 */
	@ExceptionHandler(BindException.class)
	public APIResponse validExceptionHandler(BindException e) {
		StringBuilder message = new StringBuilder();
		List<FieldError> fieldErrors = e.getBindingResult().getFieldErrors();
		for (FieldError error : fieldErrors) {
			message.append(error.getField()).append(error.getDefaultMessage()).append(",");
		}
		message = new StringBuilder(message.substring(0, message.length() - 1));
		return APIResponse.fail(message.toString());

	}
}
