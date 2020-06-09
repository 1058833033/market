package com.qf.market.controller;

import com.qf.market.pojo.Roles;
import com.qf.market.service.RolesService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Roles)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("roles")
public class RolesController {
    /**
     * 服务对象
     */
    @Resource
    private RolesService rolesService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Roles selectOne(Integer id) {
        return this.rolesService.queryById(id);
    }

}