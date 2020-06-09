package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Address)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Address implements Serializable {
    private static final long serialVersionUID = -57954697915929551L;

    private Integer did;

    private Integer userId;

    private String province;

    private String city;

    private String township;

    private String detail;

    private Integer types;

}