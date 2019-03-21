package com.longuto.springbootemplate.domain.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "登录用户dto")
public class LoginDto {

    @ApiModelProperty(name = "username", value = "用户名", required = true, example = "admin")
    private String username;

    @ApiModelProperty(name = "password", value = "密码", required = true, example = "123456")
    private String password;

    @ApiModelProperty(hidden = true)
    private String remember;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }
}
