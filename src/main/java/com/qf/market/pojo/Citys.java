package com.qf.market.pojo;

import java.io.Serializable;

/**
 * (Citys)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
public class Citys implements Serializable {
    private static final long serialVersionUID = -90831734701219106L;

    private Integer cid;

    private String cname;

    private Integer pid;


    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

}