package com.qf.market.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Users)实体类
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users implements Serializable {
    private static final long serialVersionUID = -27071965534891198L;

    private Integer userId;

    private String userName;

    private String password;

    private String email;

    private String tel;

    private Integer level;

    private Integer integral;

    private Integer ifNew;

}