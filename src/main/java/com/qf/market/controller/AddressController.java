package com.qf.market.controller;

import com.qf.market.pojo.Address;
import com.qf.market.service.AddressService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Address)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
@Controller
public class AddressController {
    /**
     * 服务对象
     */
    @Resource
    private AddressService addressService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    /*@GetMapping("selectOne")
    public Address selectOne(Integer id) {
        return this.addressService.queryById(id);
    }*/
    @GetMapping("gotoLocation")
    public String gotoLocation() {
        return "location";
    }

}