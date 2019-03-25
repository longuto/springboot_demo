package com.longuto.springbootemplate.common.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * 返回的参数封装类
 * Created by Donghua.Chen on 2018/4/20.
 */
@ApiModel
public class APIResponse<T> implements Serializable {

    public static final int CODE_SUCCESS = 0;  // 成功

    public static final int CODE_FAIL = -1;    // 失败

    public static final int CODE_USER_NO_LOGIN = 10001;  // 用户未登录

    public static final int CODE_USER_NO_PERMISS = 10002;  // 用户无权限访问

    @ApiModelProperty(name = "code", value = "业务code码", notes = "0成功，-1失败，10001未登录，10002无权限")
    private int code;
    @ApiModelProperty(name = "data", value = "业务成功数据")
    private T data;
    @ApiModelProperty(name = "msg", value = "原因描述")
    private String msg;

    public APIResponse(){

    }

    public APIResponse(int code){
        this.code = code;
    }

    public APIResponse(int code, T data){
        this.code = code;
        this.data = data;
    }

    public APIResponse(int code, String msg){
        this.code = code;
        this.msg = msg;
    }

    public static APIResponse success(){
        return new APIResponse(CODE_SUCCESS);
    }

    public static APIResponse success(Object data){
        return new APIResponse(CODE_SUCCESS, data);
    }

    public static APIResponse fail(String msg){
        return new APIResponse(CODE_FAIL, msg);
    }

    public static APIResponse widthCode(int errorCode) {
        return new APIResponse(errorCode);
    }

    public String getMsg() {
        return msg;
    }

    public APIResponse<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public int getCode() {
        return code;
    }

    public APIResponse setCode(int code) {
        this.code = code;
        return this;
    }

    public T getData() {
        return data;
    }

    public APIResponse setData(T data) {
        this.data = data;
        return this;
    }
}
