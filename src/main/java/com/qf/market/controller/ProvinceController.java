package com.qf.market.controller;

import com.qf.market.pojo.Province;
import com.qf.market.service.ProvinceService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Province)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("province")
public class ProvinceController {
    /**
     * 服务对象
     */
    @Resource
    private ProvinceService provinceService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Province selectOne(Integer id) {
        return this.provinceService.queryById(id);
    }

}