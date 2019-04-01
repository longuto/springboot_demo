package com.longuto.springbootemplate.pojo.po;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Table(name = "pda_in_shelf")
public class PdaInShelf implements Serializable {

    public PdaInShelf() {
    }

    public PdaInShelf(Integer pickid, Integer skuid, String skubatch, Integer qty, String editor, Date edittime) {
        this.pickid = pickid;
        this.skuid = skuid;
        this.skubatch = skubatch;
        this.qty = qty;
        this.editor = editor;
        this.edittime = edittime;
    }

    /**
     * 货位主键
     */
    @Id
    @Column(name = "pickid")
    private Integer pickid;

    /**
     * sku主键
     */
    @Id
    @Column(name = "skuid")
    private Integer skuid;

    /**
     * 批次号
     */
    @Id
    @Column(name = "skubatch")
    private String skubatch;

    @Column(name = "qty")
    private Integer qty;

    @Column(name = "editor")
    private String editor;

    @Column(name = "edittime")
    private Date edittime;

    /**
     * 获取货位主键
     *
     * @return pickid - 货位主键
     */
    public Integer getPickid() {
        return pickid;
    }

    /**
     * 设置货位主键
     *
     * @param pickid 货位主键
     */
    public void setPickid(Integer pickid) {
        this.pickid = pickid;
    }

    /**
     * 获取sku主键
     *
     * @return skuid - sku主键
     */
    public Integer getSkuid() {
        return skuid;
    }

    /**
     * 设置sku主键
     *
     * @param skuid sku主键
     */
    public void setSkuid(Integer skuid) {
        this.skuid = skuid;
    }

    /**
     * 获取批次号
     *
     * @return skubatch - 批次号
     */
    public String getSkubatch() {
        return skubatch;
    }

    /**
     * 设置批次号
     *
     * @param skubatch 批次号
     */
    public void setSkubatch(String skubatch) {
        this.skubatch = skubatch;
    }

    /**
     * @return qty
     */
    public Integer getQty() {
        return qty;
    }

    /**
     * @param qty
     */
    public void setQty(Integer qty) {
        this.qty = qty;
    }

    /**
     * @return editor
     */
    public String getEditor() {
        return editor;
    }

    /**
     * @param editor
     */
    public void setEditor(String editor) {
        this.editor = editor;
    }

    /**
     * @return edittime
     */
    public Date getEdittime() {
        return edittime;
    }

    /**
     * @param edittime
     */
    public void setEdittime(Date edittime) {
        this.edittime = edittime;
    }
}