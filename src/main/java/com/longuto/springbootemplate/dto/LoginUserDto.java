package com.longuto.springbootemplate.dto;

/**
 * 登录接口返回用户实体类
 */
public class LoginUserDto {

    public LoginUserDto(String token, Integer uid, String name, String username, Byte state) {
        this.token = token;
        this.uid = uid;
        this.name = name;
        this.username = username;
        this.state = state;
    }

    public LoginUserDto() {
    }

    private String token;   // 用户token

    private Integer uid;    // 用户id

    private String name;    // 用户姓名

    private String username;    // 用户名

    private Byte state; // 用户状态,0是禁用 1是启用

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Byte getState() {
        return state;
    }

    public void setState(Byte state) {
        this.state = state;
    }
}
