package com.longuto.springbootemplate.domain;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "pub_stock")
public class PubStock implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "sid")
    @GeneratedValue(generator = "JDBC")
    private Integer sid;

    /**
     * 仓库名称
     */
    @Column(name = "`name`")
    private String name;

    /**
     * 仓库编码（仓库别名）
     */
    @Column(name = "`number`")
    private String number;

    /**
     * 仓库类型：0单仓，1启用货位
     */
    @Column(name = "`type`")
    private Byte type;

    /**
     * 状态：0是禁用，1是启用
     */
    @Column(name = "`status`")
    private Byte status;

    /**
     * 创建时间
     */
    @Column(name = "createtime")
    private Date createtime;

    /**
     * 修改时间
     */
    @Column(name = "edittime")
    private Date edittime;

    /**
     * 修改人
     */
    @Column(name = "editor")
    private String editor;

    /**
     * 获取主键
     *
     * @return sid - 主键
     */
    public Integer getSid() {
        return sid;
    }

    /**
     * 设置主键
     *
     * @param sid 主键
     */
    public void setSid(Integer sid) {
        this.sid = sid;
    }

    /**
     * 获取仓库名称
     *
     * @return name - 仓库名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置仓库名称
     *
     * @param name 仓库名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取仓库编码（仓库别名）
     *
     * @return number - 仓库编码（仓库别名）
     */
    public String getNumber() {
        return number;
    }

    /**
     * 设置仓库编码（仓库别名）
     *
     * @param number 仓库编码（仓库别名）
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * 获取仓库类型：0单仓，1启用货位
     *
     * @return type - 仓库类型：0单仓，1启用货位
     */
    public Byte getType() {
        return type;
    }

    /**
     * 设置仓库类型：0单仓，1启用货位
     *
     * @param type 仓库类型：0单仓，1启用货位
     */
    public void setType(Byte type) {
        this.type = type;
    }

    /**
     * 获取状态：0是禁用，1是启用
     *
     * @return status - 状态：0是禁用，1是启用
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置状态：0是禁用，1是启用
     *
     * @param status 状态：0是禁用，1是启用
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * 获取创建时间
     *
     * @return createtime - 创建时间
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * 设置创建时间
     *
     * @param createtime 创建时间
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取修改时间
     *
     * @return edittime - 修改时间
     */
    public Date getEdittime() {
        return edittime;
    }

    /**
     * 设置修改时间
     *
     * @param edittime 修改时间
     */
    public void setEdittime(Date edittime) {
        this.edittime = edittime;
    }

    /**
     * 获取修改人
     *
     * @return editor - 修改人
     */
    public String getEditor() {
        return editor;
    }

    /**
     * 设置修改人
     *
     * @param editor 修改人
     */
    public void setEditor(String editor) {
        this.editor = editor;
    }
}