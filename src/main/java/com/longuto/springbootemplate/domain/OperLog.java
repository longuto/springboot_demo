package com.longuto.springbootemplate.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "oper_log")
public class OperLog implements Serializable {
    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "userid")
    private Integer userid;

    @Column(name = "username")
    private String username;

    @Column(name = "createtime")
    private Date createtime;

    @Column(name = "classname")
    private String classname;

    @Column(name = "methodname")
    private String methodname;

    @Column(name = "params")
    private String params;

    @Column(name = "durationtime")
    private Long durationtime;

    @Column(name = "ip")
    private String ip;

    @Column(name = "`location`")
    private String location;

    @Column(name = "`value`")
    private String value;

    /**
     * @return id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return userid
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * @param userid
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
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
     * @return createtime
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * @param createtime
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * @return classname
     */
    public String getClassname() {
        return classname;
    }

    /**
     * @param classname
     */
    public void setClassname(String classname) {
        this.classname = classname;
    }

    /**
     * @return methodname
     */
    public String getMethodname() {
        return methodname;
    }

    /**
     * @param methodname
     */
    public void setMethodname(String methodname) {
        this.methodname = methodname;
    }

    /**
     * @return params
     */
    public String getParams() {
        return params;
    }

    /**
     * @param params
     */
    public void setParams(String params) {
        this.params = params;
    }

    /**
     * @return durationtime
     */
    public Long getDurationtime() {
        return durationtime;
    }

    /**
     * @param durationtime
     */
    public void setDurationtime(Long durationtime) {
        this.durationtime = durationtime;
    }

    /**
     * @return ip
     */
    public String getIp() {
        return ip;
    }

    /**
     * @param ip
     */
    public void setIp(String ip) {
        this.ip = ip;
    }

    /**
     * @return location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return value
     */
    public String getValue() {
        return value;
    }

    /**
     * @param value
     */
    public void setValue(String value) {
        this.value = value;
    }
}