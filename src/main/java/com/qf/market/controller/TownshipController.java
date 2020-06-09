package com.qf.market.controller;

import com.qf.market.pojo.Township;
import com.qf.market.service.TownshipService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Township)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("township")
public class TownshipController {
    /**
     * 服务对象
     */
    @Resource
    private TownshipService townshipService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Township selectOne(Integer id) {
        return this.townshipService.queryById(id);
    }

}