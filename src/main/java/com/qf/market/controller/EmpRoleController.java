package com.qf.market.controller;

import com.qf.market.pojo.EmpRole;
import com.qf.market.service.EmpRoleService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (EmpRole)表控制层
 *
 * @author makejava
 * @since 2020-03-24 21:29:21
 */
@RestController
@RequestMapping("empRole")
public class EmpRoleController {
    /**
     * 服务对象
     */
    @Resource
    private EmpRoleService empRoleService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public EmpRole selectOne(Integer id) {
        return this.empRoleService.queryById(id);
    }

}