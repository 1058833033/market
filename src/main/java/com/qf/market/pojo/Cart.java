package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Map;

/**
 * (Cart)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart implements Serializable {
    private static final long serialVersionUID = -59294326960752669L;

    private Integer cid;

    private Integer userId;

    private Integer fdid;

    private Integer count;

}