package com.qf.market.pojo;

import java.io.Serializable;

/**
 * (Courier)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public class Courier implements Serializable {
    private static final long serialVersionUID = -14173175319850901L;

    private String account;

    private String name;

    private String tel;


    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

}