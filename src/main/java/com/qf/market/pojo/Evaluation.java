package com.qf.market.pojo;

import java.util.Date;
import java.io.Serializable;

/**
 * (Evaluation)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
public class Evaluation implements Serializable {
    private static final long serialVersionUID = 587063100272567884L;

    private Integer eid;

    private Integer userId;

    private Integer fdid;

    private String detial;

    private Integer grade;

    private Date evaDate;


    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFdid() {
        return fdid;
    }

    public void setFdid(Integer fdid) {
        this.fdid = fdid;
    }

    public String getDetial() {
        return detial;
    }

    public void setDetial(String detial) {
        this.detial = detial;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Date getEvaDate() {
        return evaDate;
    }

    public void setEvaDate(Date evaDate) {
        this.evaDate = evaDate;
    }

}