package com.longuto.springbootemplate.common.handler;

import com.longuto.springbootemplate.common.domain.APIResponse;
import com.longuto.springbootemplate.common.exception.BusinessException;
import org.apache.commons.lang3.StringUtils;
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

    @ExceptionHandler(value = BusinessException.class)
    public APIResponse businessException(Exception e){
        int code = APIResponse.CODE_FAIL;
        code = ((BusinessException) e).getErrorCode();
        String message = "未知异常";
        message = StringUtils.isNotBlank(e.getMessage()) ? e.getMessage() : message;
        e.printStackTrace();
        return APIResponse.widthCode(code);
    }
}
