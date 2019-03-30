package com.longuto.springbootemplate.domain;

import com.longuto.springbootemplate.common.annotation.EnumValue;
import com.longuto.springbootemplate.common.base.EnumValueValidator;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Table(name = "pub_sku")
public class PubSku implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "sid")
    @GeneratedValue(generator = "JDBC")
    private Integer sid;

    @Column(name = "`number`")
    @NotEmpty
    private String number;

    @Column(name = "`name`")
    @NotEmpty
    private String name;

    /**
     * 状态：禁用是0，启用是1
     */
    @Column(name = "`status`")
    @EnumValue(byteValues = {0, 1}, message = "{must_0_1}")
    private Byte status;

    /**
     * 类型：0是无批次号，1是启用批次号
     */
    @Column(name = "`type`")
    @EnumValue(byteValues = {0, 1}, message = "{must_0_1}")
    private Byte type;

    /**
     * 商品说明
     */
    @Column(name = "note")
    private String note;

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
     * @return number
     */
    public String getNumber() {
        return number;
    }

    /**
     * @param number
     */
    public void setNumber(String number) {
        this.number = number;
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
     * 获取状态：禁用是0，启用是1
     *
     * @return status - 状态：禁用是0，启用是1
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置状态：禁用是0，启用是1
     *
     * @param status 状态：禁用是0，启用是1
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * 获取类型：0是无批次号，1是启用批次号
     *
     * @return type - 类型：0是无批次号，1是启用批次号
     */
    public Byte getType() {
        return type;
    }

    /**
     * 设置类型：0是无批次号，1是启用批次号
     *
     * @param type 类型：0是无批次号，1是启用批次号
     */
    public void setType(Byte type) {
        this.type = type;
    }

    /**
     * 获取商品说明
     *
     * @return note - 商品说明
     */
    public String getNote() {
        return note;
    }

    /**
     * 设置商品说明
     *
     * @param note 商品说明
     */
    public void setNote(String note) {
        this.note = note;
    }
}