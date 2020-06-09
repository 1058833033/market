package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (FreshGoods)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreshGoods implements Serializable {
    private static final long serialVersionUID = -20942622319708535L;

    private Integer fdid;

    private String goodName;

    private Integer gtid;

    private String img;

    private Double price;

    private Integer discount;

    private Integer preference;

    private Integer ifPromotion;

    private Integer lastSales;

    private Integer currentSales;

    private Integer countSales;

    private String summery;

    private String attr1;

    private String attr2;

}