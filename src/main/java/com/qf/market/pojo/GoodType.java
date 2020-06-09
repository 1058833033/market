package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (GoodType)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GoodType implements Serializable {
    private static final long serialVersionUID = -54734943195263145L;

    private Integer gtid;

    private String gtname;

}