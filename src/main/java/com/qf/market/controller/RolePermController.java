package com.qf.market.controller;

import com.qf.market.pojo.RolePerm;
import com.qf.market.service.RolePermService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (RolePerm)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("rolePerm")
public class RolePermController {
    /**
     * 服务对象
     */
    @Resource
    private RolePermService rolePermService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public RolePerm selectOne(Integer id) {
        return this.rolePermService.queryById(id);
    }

}