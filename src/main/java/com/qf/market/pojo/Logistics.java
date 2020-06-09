package com.qf.market.pojo;

import java.util.Date;
import java.io.Serializable;

/**
 * (Logistics)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public class Logistics implements Serializable {
    private static final long serialVersionUID = -19955555363224975L;

    private Integer lid;

    private String account;

    private Integer userId;

    private Integer oid;

    private Date payTime;

    private Date packageTime;

    private Date beginTime;

    private Date endTime;

    private Integer status;


    public Integer getLid() {
        return lid;
    }

    public void setLid(Integer lid) {
        this.lid = lid;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Date getPackageTime() {
        return packageTime;
    }

    public void setPackageTime(Date packageTime) {
        this.packageTime = packageTime;
    }

    public Date getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}