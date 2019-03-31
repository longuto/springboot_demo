package com.longuto.springbootemplate.pojo.po;

import javax.persistence.*;
import java.io.Serializable;

@Table(name = "pub_pick")
public class PubPick implements Serializable {
    /**
     * 主键
     */
    @Id
    @Column(name = "pid")
    @GeneratedValue(generator = "JDBC")
    private Integer pid;

    /**
     * 货位名称
     */
    @Column(name = "`number`")
    private String number;

    /**
     * 状态：0禁用，1启用
     */
    @Column(name = "`status`")
    private Byte status;

    /**
     * sku外键
     */
    @Column(name = "skuid")
    private Integer skuid;

    /**
     * 仓库外键
     */
    @Column(name = "stockid")
    private Integer stockid;

    /**
     * 总容量
     */
    @Column(name = "totalqty")
    private Integer totalqty;

    /**
     * 已用容量
     */
    @Column(name = "usedqty")
    private Integer usedqty;

    /**
     * 获取主键
     *
     * @return pid - 主键
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * 设置主键
     *
     * @param pid 主键
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * 获取货位名称
     *
     * @return number - 货位名称
     */
    public String getNumber() {
        return number;
    }

    /**
     * 设置货位名称
     *
     * @param number 货位名称
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * 获取状态：0禁用，1启用
     *
     * @return status - 状态：0禁用，1启用
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置状态：0禁用，1启用
     *
     * @param status 状态：0禁用，1启用
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * 获取sku外键
     *
     * @return skuid - sku外键
     */
    public Integer getSkuid() {
        return skuid;
    }

    /**
     * 设置sku外键
     *
     * @param skuid sku外键
     */
    public void setSkuid(Integer skuid) {
        this.skuid = skuid;
    }

    /**
     * 获取仓库外键
     *
     * @return stockid - 仓库外键
     */
    public Integer getStockid() {
        return stockid;
    }

    /**
     * 设置仓库外键
     *
     * @param stockid 仓库外键
     */
    public void setStockid(Integer stockid) {
        this.stockid = stockid;
    }

    /**
     * 获取总容量
     *
     * @return totalqty - 总容量
     */
    public Integer getTotalqty() {
        return totalqty;
    }

    /**
     * 设置总容量
     *
     * @param totalqty 总容量
     */
    public void setTotalqty(Integer totalqty) {
        this.totalqty = totalqty;
    }

    /**
     * 获取已用容量
     *
     * @return usedqty - 已用容量
     */
    public Integer getUsedqty() {
        return usedqty;
    }

    /**
     * 设置已用容量
     *
     * @param usedqty 已用容量
     */
    public void setUsedqty(Integer usedqty) {
        this.usedqty = usedqty;
    }
}