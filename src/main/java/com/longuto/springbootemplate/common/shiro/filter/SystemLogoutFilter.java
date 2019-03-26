package com.longuto.springbootemplate.common.shiro.filter;

import com.alibaba.fastjson.JSONObject;
import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.PrintWriter;

import static com.longuto.springbootemplate.common.domain.APIResponse.CODE_FAIL;
import static com.longuto.springbootemplate.common.domain.APIResponse.CODE_SUCCESS;

/**
 * 自定义退出的拦截器，退出返回json
 * @author 35168
 *
 */
public class SystemLogoutFilter extends LogoutFilter {

    private static final Logger log = LoggerFactory.getLogger(SystemLogoutFilter.class);

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        int code = CODE_SUCCESS;
        String msg = "成功";
        try {
            subject.logout();
        } catch (SessionException ise) {
            log.debug("Encountered session exception during logout.  This can generally safely be ignored.", ise);
            code = CODE_FAIL;
            msg = ise.getMessage();
        }
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        JSONObject result = new JSONObject();
        result.put("code", code);
        result.put("msg", msg);
        out.println(result);
        out.flush();
        out.close();
        return false;
    }
}