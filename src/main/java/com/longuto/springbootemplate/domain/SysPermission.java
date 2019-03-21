package com.longuto.springbootemplate.domain;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "sys_permission")
public class SysPermission implements Serializable {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    @Column(name = "available")
    private Boolean available;

    @Column(name = "`name`")
    private String name;

    @Column(name = "parent_id")
    private Long parentId;

    @Column(name = "parent_ids")
    private String parentIds;

    @Column(name = "permission")
    private String permission;

    @Column(name = "resource_type")
    private Object resourceType;

    @Column(name = "url")
    private String url;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return available
     */
    public Boolean getAvailable() {
        return available;
    }

    /**
     * @param available
     */
    public void setAvailable(Boolean available) {
        this.available = available;
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
     * @return parent_id
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * @return parent_ids
     */
    public String getParentIds() {
        return parentIds;
    }

    /**
     * @param parentIds
     */
    public void setParentIds(String parentIds) {
        this.parentIds = parentIds;
    }

    /**
     * @return permission
     */
    public String getPermission() {
        return permission;
    }

    /**
     * @param permission
     */
    public void setPermission(String permission) {
        this.permission = permission;
    }

    /**
     * @return resource_type
     */
    public Object getResourceType() {
        return resourceType;
    }

    /**
     * @param resourceType
     */
    public void setResourceType(Object resourceType) {
        this.resourceType = resourceType;
    }

    /**
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }
}