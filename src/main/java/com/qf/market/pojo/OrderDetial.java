package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (OrderDetial)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetial implements Serializable {
    private static final long serialVersionUID = 246220690195498453L;

    private Integer did;

    private Integer oid;

    private Integer fdid;

    private Integer count;

}