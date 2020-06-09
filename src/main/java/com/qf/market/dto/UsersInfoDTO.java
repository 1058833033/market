package com.qf.market.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: ChenJie
 * @Date: 2020/3/27 22:59
 * Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsersInfoDTO {
    private static final long serialVersionUID = -27071969934891198L;

    private Integer userId;

    private String userName;

    private String password;

    private String email;

    private String tel;

    private Integer level;

    private String province;

    private String city;

    private String township;

    private String detail;
}
