package com.qf.market.controller;

import com.qf.market.pojo.Courier;
import com.qf.market.service.CourierService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Courier)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("courier")
public class CourierController {
    /**
     * 服务对象
     */
    @Resource
    private CourierService courierService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Courier selectOne(String id) {
        return this.courierService.queryById(id);
    }

}