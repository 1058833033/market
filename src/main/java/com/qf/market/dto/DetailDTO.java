package com.qf.market.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: ChenJie
 * @Date: 2020/3/27 20:13
 * Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DetailDTO {
    private static final long serialVersionUID = -20942622319704535L;

    private String goodName;

    private String img;

    private Double price;

    private Integer discount;

    private Integer count;
}
