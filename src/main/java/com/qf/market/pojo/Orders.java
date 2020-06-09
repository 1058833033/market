package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.io.Serializable;

/**
 * (Orders)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders implements Serializable {
    private static final long serialVersionUID = 965135409516032429L;

    private Integer oid;

    private Integer userId;

    private Date orderTime;

    private Double totalPrice;

    private Integer orderStatus;

    private Integer payType;

}