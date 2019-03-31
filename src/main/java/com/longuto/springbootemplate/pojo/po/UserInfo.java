package com.longuto.springbootemplate.pojo.po;

import org.apache.commons.lang3.StringUtils;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

@Table(name = "user_info")
public class UserInfo implements Serializable {
    /**
     * 账户状态
     */
    public static final Byte STATUS_VALID = 1;
    public static final Byte STATUS_LOCK = 0;

    @Id
    @Column(name = "`uid`")
    @GeneratedValue(generator = "JDBC")
    private Integer uid;

    @Column(name = "`name`")
    private String name;

    @Column(name = "`password`")
    @NotEmpty
    private String password;

    @Column(name = "salt")
    private String salt;

    @Column(name = "`state`")
    private Byte state;

    @Column(name = "username")
    @NotEmpty
    private String username;

    /**
     * @return uid
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * @param uid
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return salt
     */
    public String getSalt() {
        return salt;
    }

    /**
     * @param salt
     */
    public void setSalt(String salt) {
        this.salt = salt;
    }

    /**
     * @return state
     */
    public Byte getState() {
        return state;
    }

    /**
     * @param state
     */
    public void setState(Byte state) {
        this.state = state;
    }

    /**
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 密码盐.
     * @return
     */
    public String getCredentialsSalt(){
        return this.username.toLowerCase() + (!StringUtils.isNotBlank(this.salt) ? "" : this.salt);
    }
    //重新对盐重新进行了定义，用户名+salt，这样就更加不容易被破解

    /**
     * shiro-redis v3.1.0 必须要有getAuthCacheKey()或者getId()方法
     * # Principal id field name. The field which you can get unique id to identify this principal.
     * # For example, if you use UserInfo as Principal class, the id field maybe userId, userName, email, etc.
     * # Remember to add getter to this id field. For example, getUserId(), getUserName(), getEmail(), etc.
     * # Default value is authCacheKey or id, that means your principal object has a method called "getAuthCacheKey()" or "getId()"
     * @return userId as Principal id field name
     */
    public Integer getAuthCacheKey() {
        return uid;
    }
}