package com.longuto.springbootemplate.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "template")
public class TemplateProperties {

    private String timeFormat = "yyyy-MM-dd HH:mm:ss";

    private boolean openAopLog = true;  // 是否开启Aop日志

    private long expireIn;

    private long sessionTimeout;

    private int cookieTimeout;

    public String getTimeFormat() {
        return timeFormat;
    }

    public void setTimeFormat(String timeFormat) {
        this.timeFormat = timeFormat;
    }

    public boolean isOpenAopLog() {
        return openAopLog;
    }

    public void setOpenAopLog(boolean openAopLog) {
        this.openAopLog = openAopLog;
    }

    public long getExpireIn() {
        return expireIn;
    }

    public void setExpireIn(long expireIn) {
        this.expireIn = expireIn;
    }

    public long getSessionTimeout() {
        return sessionTimeout;
    }

    public void setSessionTimeout(long sessionTimeout) {
        this.sessionTimeout = sessionTimeout;
    }

    public int getCookieTimeout() {
        return cookieTimeout;
    }

    public void setCookieTimeout(int cookieTimeout) {
        this.cookieTimeout = cookieTimeout;
    }
}
