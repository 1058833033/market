package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: ChenJie
 * @Date: 2020/3/26 12:47
 * Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
    private Integer count;
    private FreshGoods freshGoods;
}
