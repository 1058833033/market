package com.qf.market.pojo;

import java.io.Serializable;

/**
 * (RolePerm)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public class RolePerm implements Serializable {
    private static final long serialVersionUID = -44403011119702433L;

    private Integer rid;

    private Integer pid;


    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

}