package com.qf.market.controller;

import com.qf.market.pojo.GoodType;
import com.qf.market.service.GoodTypeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (GoodType)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("goodType")
public class GoodTypeController {
    /**
     * 服务对象
     */
    @Resource
    private GoodTypeService goodTypeService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public GoodType selectOne(Integer id) {
        return this.goodTypeService.queryById(id);
    }

}