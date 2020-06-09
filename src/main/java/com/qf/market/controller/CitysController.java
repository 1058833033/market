package com.qf.market.controller;

import com.qf.market.pojo.Citys;
import com.qf.market.service.CitysService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Citys)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:20
 */
@RestController
@RequestMapping("citys")
public class CitysController {
    /**
     * 服务对象
     */
    @Resource
    private CitysService citysService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Citys selectOne(Integer id) {
        return this.citysService.queryById(id);
    }

}