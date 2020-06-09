package com.qf.market.pojo;

import java.io.Serializable;

/**
 * (Province)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public class Province implements Serializable {
    private static final long serialVersionUID = -95800070497455304L;

    private Integer pid;

    private String pname;


    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

}