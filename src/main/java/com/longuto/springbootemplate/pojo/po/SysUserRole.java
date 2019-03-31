package com.longuto.springbootemplate.pojo.po;

import javax.persistence.*;

@Table(name = "sys_user_role")
public class SysUserRole {
    @Column(name = "role_id")
    private Integer roleId;

    @Column(name = "`uid`")
    private Integer uid;

    /**
     * @return role_id
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * @param roleId
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

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
}